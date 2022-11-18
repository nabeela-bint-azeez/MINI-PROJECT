from django.conf.urls import url
from temp import views

urlpatterns = [
    url('home/', views.home),
    url('user/', views.user),
    url('admin/', views.admin),
    url('doctor/', views.doctor)

]

