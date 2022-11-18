from django.conf.urls import url
from doctor import views

urlpatterns = [
    url('post/', views.adddoctor),
    url('view/', views.viewdoctor)

]