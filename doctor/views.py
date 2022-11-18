from django.shortcuts import render
from doctor.models import Doctor
from hospital.models import Hospital
from login.models import Login
# Create your views here.
def adddoctor(request):
    obj=Hospital.objects.all()
    context = {
        'objval': obj
    }
    if request.method=='POST':
        obj=Doctor()
        obj.hospital_name=request.POST.get('hospitalname')
        obj.doctor_name=request.POST.get('dname')
        obj.specialisation=request.POST.get('spl')
        obj.password=request.POST.get('pswd')

        obj.save()

        ob = Login()
        ob.username = obj.doctor_name
        ob.password = obj.password
        ob.type = 'doctor'
        ob.uid = obj.doctor_id
        ob.save()
    return render(request, 'doctor/add doctor.html',context)
def viewdoctor(request):
    ob=Doctor.objects.all()
    context={
        'objval':ob
    }
    return render(request, 'doctor/viewdoctor.html',context)