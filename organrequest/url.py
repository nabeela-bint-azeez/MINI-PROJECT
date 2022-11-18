from django.conf.urls import url
from organrequest import views

urlpatterns = [
    url('post/', views.addrequest),
    url('manage/', views.manage),
    url('viewreq/', views.viewrequest),
    url('updt/(?P<idd>\w+)',views.approve,name="ap"),
    url('dlt/(?P<idd>\w+)',views.reject,name="rej"),
    url('vvv/', views.vw),

]