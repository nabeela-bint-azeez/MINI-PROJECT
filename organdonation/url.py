from django.conf.urls import url
from organdonation import views

urlpatterns = [
    url('post/', views.adddonation),
    url('manages/', views.managedonation),
    url('updtd/(?P<idd>\w+)',views.approved,name="apr"),
    url('dltd/(?P<idd>\w+)',views.rejected,name="rejc"),
    url('viewdonation/', views.viewdonation),

]

