from django.http import HttpResponse
from django.conf.urls import re_path
from django.core.exceptions import ValidationError
from stark.service.v1 import StarkHandler, get_choice_text, StarkModelForm, StarkForm,Option
from apps.web import models
from django import forms
from django.utils.safestring import mark_safe
from django.shortcuts import render,redirect
from .base import PermissionHandler



class UserInfoAddModelForm(StarkModelForm):
    confirm_password = forms.CharField(label='确认密码')

    class Meta:
        model = models.UserInfo
        fields = ['username','realname', 'password', 'confirm_password', 'gender', 'age', 'phone', 'email','depart']

    def clean_confirm_password(self):
        password = self.cleaned_data['password']
        confirm_password = self.cleaned_data['confirm_password']
        if password != confirm_password:
            raise ValidationError('密码输入不一致')
        return confirm_password

    # 用于保存密文
    # def clean(self):
    #     try:
    #         password = self.cleaned_data['password']
    #         self.cleaned_data['password'] = md5(password)
    #     except:
    #         pass
    #     return self.cleaned_data


class UserInfoChangeModelForm(StarkModelForm):
    class Meta:
        model = models.UserInfo
        fields = ['username','realname', 'gender','age', 'phone','email','depart']


class ResetPasswordForm(StarkForm):
    password = forms.CharField(label='密码', widget=forms.PasswordInput)
    confirm_password = forms.CharField(label='确认密码', widget=forms.PasswordInput)

    def clean_confirm_password(self):
        password = self.cleaned_data['password']
        confirm_password = self.cleaned_data['confirm_password']
        if password != confirm_password:
            raise ValidationError('密码输入不一致')
        return confirm_password



class MyOption(Option):
    def get_db_condition(self, request, *args, **kwargs):
        return {}


class UserInfoHandler(PermissionHandler,StarkHandler):

    def display_reset_pwd(self, request, obj=None, is_header=None, *args, **kwargs):
        if is_header:
            return '重置密码'
        reset_url = self.reverse_commons_url(self.get_url_name('reset_pwd'), pk=obj.pk)
        return mark_safe("<a href='%s'>重置密码</a>" % reset_url)


    # 定制页面显示的列
    list_display = [StarkHandler.display_checkbox,
                    'username',
                    'realname',
                    get_choice_text('性别', 'gender'),
                    'age','phone', 'email', 'depart',
                    display_reset_pwd,]

    # 自定义扩展，例如：根据用户的不同显示不同的列
    # def get_list_display(self, request, *args, **kwargs):
    #     return ['name', 'age']

    # 修改URL
    # def get_urls(self):
    #     patterns = [
    #         re_path(r'^list/$', self.changelist_view),
    #         re_path(r'^add/$', self.add_view),
    #     ]
    #     return patterns


    per_page_count = 10

    has_add_btn = True

    # model_form_class = UserInfoModelForm
    def get_model_form_class(self, is_add, request, pk, *args, **kwargs):
        if is_add:
            return UserInfoAddModelForm
        return UserInfoChangeModelForm

    # 排序功能
    order_list = ['age']


    # 批量操作
    def action_multi_active(self, request, *args, **kwargs):
        """批量启用（如果想要定制执行成功后的返回值，那么就为action函数设置返回值即可）"""
        response = HttpResponse()
        response['Content-Type'] = 'text/html; charset=UTF-8'
        response.content = "<script>alert('已批量启用！');window.location=window.location;window.close();</script>";
        return response
    action_multi_active.text = '批量启用'

    action_list = [StarkHandler.action_multi_delete, action_multi_active]

    def save(self, request, form, is_update, *args, **kwargs):
        if not is_update:
            password = form.cleaned_data.get('password')
            form.instance.set_password(password)
        form.save()



    # 姓名中含有关键字或邮箱中含有关键字
    search_list = ['username__contains','realname__contains', 'email__contains']
    search_group = [
        Option('gender'),
        Option('depart',is_multi=True, db_condition={'id__gt': 0})
        # MyOption('depart', {'id__gt': 2}),
        # Option('gender', text_func=lambda field_object: field_object[1] + '666'),
    ]

    # 重置密码
    def reset_password(self, request, pk):
        """
        重置密码的视图函数
        """
        userinfo_object = models.UserInfo.objects.filter(id=pk).first()
        if not userinfo_object:
            return HttpResponse('用户不存在，无法进行密码重置！')
        if request.method == 'GET':
            form = ResetPasswordForm()
            return render(request, 'stark/change.html', {'form': form, 'pk':pk})
        form = ResetPasswordForm(data=request.POST)
        if form.is_valid():
            password = form.cleaned_data['password']
            userinfo_object.set_password(password)
            userinfo_object.save()
            return redirect(self.reverse_list_url())
        return render(request, 'stark/change.html', {'form': form, 'pk':pk})
        form = ResetPasswordForm(data=request.POST)

    def extra_urls(self):
        patterns = [
            re_path(r'^reset/password/(?P<pk>\d+)/$', self.wrapper(self.reset_password),
                    name=self.get_url_name('reset_pwd')),
        ]
        return patterns

