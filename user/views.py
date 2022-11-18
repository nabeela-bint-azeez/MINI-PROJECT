from django.shortcuts import render
from user.models import User
from organrequest.models import Organrequest
from organdonation.models import Organdonation
from login.models import Login
from assigndoctor.models import Assigndoctor
# Create your views here.
def register(request):
    if request.method=='POST':
        ob=User()
        ob.name=request.POST.get('uname')
        ob.phone=request.POST.get('phone')
        ob.email=request.POST.get('email')
        ob.address=request.POST.get('address')
        ob.password=request.POST.get('password')
        ob.age=request.POST.get('age')
        ob.gender=request.POST.get('gender')
        ob.save()

        obj=Login()
        obj.username=ob.name
        obj.password=ob.password
        obj.type='user'
        obj.uid=ob.user_id
        obj.save()
    return render(request,'user/register.html')

def viewuser(request):
    ob = User.objects.all()
    context = {
        'objval1': ob
        }
    return render(request,'user/view user.html',context)
def viewprof(request):
    ss= request.session["u_id"]
    ob = User.objects.filter(user_id=ss)
    obj=Organdonation.objects.filter(user_id=ss)
    obb=Assigndoctor.objects.filter(user_id=ss)
    context = {
        'objval2': ob,
        'don':obj,
        'req':obb,
        }
    return render(request,'user/view profile.html',context)


