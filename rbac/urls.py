from django.urls import path
from rbac.views import role,user,menu


app_name = 'rbac'

urlpatterns = [
    path('role/list/', role.role_list, name='role_list'),
    path('role/add/', role.role_add, name='role_add'),
    path('role/edit/<int:pk>/', role.role_edit, name='role_edit'),
    path('role/del/<int:pk>/', role.role_del, name='role_del'),

    # path('user/list/', user.user_list, name='user_list'),
    # path('user/add/', user.user_add, name='user_add'),
    # path('user/edit/<int:pk>/', user.user_edit, name='user_edit'),
    # path('user/del/<int:pk>/', user.user_del, name='user_del'),
    # path('user/reset/password/<int:pk>/', user.user_reset_pwd, name='user_reset_pwd'),

    path('menu/list/', menu.menu_list, name='menu_list'),
    path('menu/add/', menu.menu_add, name='menu_add'),
    path('menu/edit/<int:pk>/', menu.menu_edit, name='menu_edit'),
    path('menu/del/<int:pk>/', menu.menu_del, name='menu_del'),
    path('second/menu/add/<int:menu_id>/', menu.second_menu_add, name='second_menu_add'),
    path('second/menu/edit/<int:pk>/', menu.second_menu_edit, name='second_menu_edit'),
    path('second/menu/del/<int:pk>/', menu.second_menu_del, name='second_menu_del'),
    path('permission/add/<int:second_menu_id>/', menu.permission_add, name='permission_add'),
    path('permission/edit/<int:pk>/', menu.permission_edit, name='permission_edit'),
    path('permission/del/<int:pk>/', menu.permission_del, name='permission_del'),

    path('multi/permissions/', menu.multi_permissions, name='multi_permissions'),
    path('multi/permissions/del/<int:pk>/', menu.multi_permissions_del, name='multi_permissions_del'),

    path('distribute/permissions/', menu.distribute_permissions, name='distribute_permissions'),

]
