from django.http import HttpResponse
from django.conf.urls import re_path
from stark.service.v1 import StarkHandler
from .base import PermissionHandler



class DepartmentHandler(PermissionHandler,StarkHandler):

    list_display = [StarkHandler.display_checkbox, 'id', 'title',]
    has_add_btn = True
    search_list = ['title__contains']
    action_list = [StarkHandler.action_multi_delete, ]
    per_page_count = 10

    # 额外的增加URL
    def extra_urls(self):
        return [
            re_path(r'^detail/(\d+)/$', self.detail_view)
        ]

    def detail_view(self, request, pk):
        return HttpResponse('详细页面')