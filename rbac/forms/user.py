from rbac import models
from django import forms
from django.core.exceptions import ValidationError
from rbac.forms.base import BootStrapModelForm


class UserModelForm(BootStrapModelForm):
    confirm_password = forms.CharField(max_length=64,label='确认密码')
    class Meta:
        model = models.User
        fields = ['username','password','confirm_password']

    def clean_confirm_password(self):
        password = self.cleaned_data['password']
        confirm_password = self.cleaned_data['confirm_password']
        if password != confirm_password:
            raise  ValidationError('两次密码输入不一致')
        return confirm_password


class UpdateUserModelForm(BootStrapModelForm):
    class Meta:
        model = models.User
        fields = ['username',]



class ResetPasswordUserModelForm(BootStrapModelForm):
    confirm_password = forms.CharField(max_length=64,label='确认密码')
    class Meta:
        model = models.User
        fields = ['password','confirm_password']

    def clean_confirm_password(self):
        password = self.cleaned_data['password']
        confirm_password = self.cleaned_data['confirm_password']
        if password != confirm_password:
            raise  ValidationError('两次密码输入不一致')
        return confirm_password