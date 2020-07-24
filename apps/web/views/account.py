from django.shortcuts import render, redirect
from apps.web import models
from rbac.service.init_permission import init_permission
from django.contrib.auth import login,logout,authenticate


def login_view(request):
    if request.method == 'GET':
        return render(request, 'login.html')

    username = request.POST.get('username')
    password = request.POST.get('password')

    user = authenticate(request,username=username,password=password)
    if user:
        if user.is_active:
            login(request,user)
            # 用户权限信息的初始化
            user_object = models.UserInfo.objects.filter(username=username).first()
            init_permission(user_object, request)
            return redirect('/index/')

    if not user:
        return render(request, 'login.html', {'error': '用户名或密码错误'})


def logout_view(request):
    """注销"""
    logout(request)
    request.session.delete()
    return redirect('/login/')


def index_view(request):
    """首页"""
    return render(request, 'index.html')
