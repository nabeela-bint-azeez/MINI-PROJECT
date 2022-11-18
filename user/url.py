from django.conf.urls import url
from user import views

urlpatterns = [
    url('rgpost/',views.register),
    url('viewprofile/',views.viewprof),
    url('viewusers/',views.viewuser),


]