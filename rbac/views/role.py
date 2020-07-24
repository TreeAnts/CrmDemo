from django.shortcuts import render,redirect,reverse
from django.http import HttpResponse
from rbac import models
from rbac.forms.role import RoleModelForm
from django.db.models import Count



def role_list(request):
    """角色列表"""
    role_queryset = models.Role.objects.annotate(permission_count=Count("permissions__id"))

    # print(role_queryset.explain())
    return render(request, 'rbac/role_list.html', {'roles': role_queryset})



def role_add(request):
    """添加角色"""
    if request.method == 'GET':
        form = RoleModelForm()
        return render(request, 'rbac/change.html',{'form':form})

    form = RoleModelForm(data=request.POST)
    if form.is_valid():
        form.save()
        return redirect(reverse('rbac:role_list'))

    return render(request, 'rbac/change.html',{'form':form})



def role_edit(request,pk):
    """编辑角色"""
    obj = models.Role.objects.filter(id=pk).first()
    if not obj:
        return HttpResponse('角色不存在')

    if request.method == 'GET':
        form = RoleModelForm(instance=obj)
        return render(request, 'rbac/change.html',{'form':form})

    form = RoleModelForm(instance=obj,data=request.POST)
    if form.is_valid():
        form.save()
        return redirect(reverse('rbac:role_list'))

    return render(request, 'rbac/change.html',{'form':form})



def role_del(request,pk):
    """删除角色"""
    origin_url = reverse('rbac:role_list')
    if request.method == 'GET':
        return render(request, 'rbac/delete.html',{'cancel': origin_url})

    if request.method == 'POST':
        models.Role.objects.filter(id=pk).delete()
        return redirect(origin_url)