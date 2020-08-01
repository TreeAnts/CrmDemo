from django.contrib.auth.models import AbstractBaseUser,BaseUserManager
from django.db import models

class Menu(models.Model):
    """
    菜单
    """
    title = models.CharField(verbose_name='菜单标题', max_length=32,unique=True)
    icon = models.CharField(verbose_name='图标', max_length=32)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '菜单'

class Permission(models.Model):
    """
    权限表
    """
    title = models.CharField(verbose_name='权限标题', max_length=32)
    url = models.CharField(verbose_name='含正则的URL', max_length=128)
    name = models.CharField(verbose_name='URL别名', max_length=32, unique=True)
    menu = models.ForeignKey(verbose_name='所属菜单', to='Menu', null=True, blank=True, help_text='null表示非菜单', on_delete=models.SET_NULL, related_name='menus')
    parent = models.ForeignKey(verbose_name='父权限', to='Permission', null=True, blank=True, on_delete=models.SET_NULL)
    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '权限'


class Role(models.Model):
    """
    角色
    """
    title = models.CharField(verbose_name='角色标题', max_length=32)
    permissions = models.ManyToManyField(verbose_name='拥有的所有权限', to='Permission', blank=True)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '角色'

class UserManager(BaseUserManager):
    def _create_user(self,username,password,**kwargs):
        if not username:
            raise ValueError('请传入用户名！')
        if not password:
            raise ValueError('请传入密码！')

        user = self.model(username=username,**kwargs)
        user.set_password(password)
        user.save()
        return user

    def create_user(self,username,password,**kwargs):
        kwargs['is_superuser'] = False
        return self._create_user(username,password,**kwargs)

    def create_superuser(self,username,password,**kwargs):
        kwargs['is_superuser'] = True
        return self._create_user(username,password,**kwargs)


class User(AbstractBaseUser):
    """
    用户表
    """
    username = models.CharField(max_length=32,unique=True,verbose_name='用户名')
    password = models.CharField(max_length=128,verbose_name='密码')
    is_active = models.BooleanField(default=True,verbose_name='用户状态')
    is_superuser = models.BooleanField(default=False,verbose_name='超级管理员')
    date_joined = models.DateTimeField(auto_now_add=True,verbose_name='注册时间')
    roles = models.ManyToManyField(verbose_name='拥有的所有角色', to=Role)  # 注意to=Role不能加引号

    objects = UserManager()

    USERNAME_FIELD = 'username'


    def __str__(self):
        return self.username

    class Meta:
        # django以后再做数据库迁移时，不再为User类创建相关的表以及表结构了。
        # 此类可以当做"父类"，被其他Model类继承。
        abstract = True