from django.conf.urls import re_path
from django.utils.safestring import mark_safe
from django.urls import reverse
from stark.service.v1 import StarkHandler, get_choice_text, get_m2m_text, StarkModelForm, Option
from apps.web import models
from .base import PermissionHandler



class StudentModelForm(StarkModelForm):
    class Meta:
        model = models.Student
        fields = ['qq', 'mobile', 'emergency_contract', 'memo']


class StudentHandler(PermissionHandler,StarkHandler):
    model_form_class = StudentModelForm

    def display_score(self, request, obj=None, is_header=None, *args, **kwargs):
        if is_header:
            return '积分管理'
        'web_scorerecord_list'
        record_url = reverse('stark:web_scorerecord_list', kwargs={'student_id': obj.pk})
        return mark_safe('<a target="_blank" href="%s">%s</a>' % (record_url, obj.score))

    list_display = ['customer', 'qq', 'mobile', 'emergency_contract', get_m2m_text('已报班级', 'class_list'),
                    display_score, get_choice_text('状态', 'student_status')]


    has_add_btn = False
    # def get_add_btn(self, request, *args, **kwargs):
    #     return None


    def get_urls(self):
        patterns = [
            re_path(r'^list/$', self.wrapper(self.changelist_view), name=self.get_list_url_name),
            # url(r'^add/$', self.wrapper(self.add_view), name=self.get_add_url_name),
            re_path(r'^change/(?P<pk>\d+)/$', self.wrapper(self.change_view), name=self.get_change_url_name),
            # url(r'^delete/(?P<pk>\d+)/$', self.wrapper(self.delete_view), name=self.get_delete_url_name),
        ]

        patterns.extend(self.extra_urls())
        return patterns

    search_list = ['customer__name', 'qq', 'mobile', ]

    search_group = [
        Option('class_list', text_func=lambda x: '%s-%s' % (x.school.title, str(x)))
    ]
