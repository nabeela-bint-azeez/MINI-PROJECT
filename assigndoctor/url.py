from  django.conf.urls import url
from assigndoctor import views

urlpatterns=[
    url('posta/(?P<idd>\w+)',views.postassign,name="as"),
    url('view/',views.viewassign),
    url('av1/(?P<idd>\w+)',views.available,name="avb"),
    url('uvl/(?P<idd>\w+)',views.unavailable,name="unbl"),
    url('viewrequestststus/',views.status),
    # url('message/',views.available,name="msg")
]