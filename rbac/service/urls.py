from django.urls import reverse
from django.http import QueryDict


def memory_url(request, name, *args, **kwargs):
    """生成带有原搜索条件的URL（替代了模板中的url)"""
    basic_url = reverse(name, args=args, kwargs=kwargs)
    # 如果当前URL无参数
    if not request.GET:
        return basic_url
    query_dict = QueryDict(mutable=True)
    query_dict['_filter'] = request.GET.urlencode()
    return "%s?%s" % (basic_url, query_dict.urlencode())


def memory_reverse(request, name, *args, **kwargs):
    """反向生成URL，并获取原来的搜索条件返回"""
    url = reverse(name, args=args, kwargs=kwargs)
    origin_params = request.GET.get('_filter')
    if origin_params:
        url = "%s?%s" % (url, origin_params,)
    return url