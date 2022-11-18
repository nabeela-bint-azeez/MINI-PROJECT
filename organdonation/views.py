from django.shortcuts import render
from organdonation.models import Organdonation
# Create your views here.
def adddonation(request):
    if request.method=='POST':
        ss = request.session["u_id"]

        ob=Organdonation()
        ob.organ_name=request.POST.get('org')
        ob.donor_name=request.POST.get('donorname')
        ob.blood_group = request.POST.get('bloodgrp')
        ob.date= request.POST.get('date')
        ob.user_id=ss
        ob.status='pending'
        ob.age=request.POST.get('age')
        ob.save()

    return render(request, 'organdonation/add organ donation.html')

def managedonation(request):
    ob = Organdonation.objects.filter(status="pending")
    context = {
        'objval': ob
    }
    return render(request, 'organdonation/manage organ donation.html',context)
def approved(request,idd):
    obj=Organdonation.objects.get(donation_id=idd)
    obj.status='approved'
    obj.save()
    return managedonation(request)
def rejected(request,idd):
    obj=Organdonation.objects.get(donation_id=idd)
    obj.status='rejected'
    obj.save()
    return managedonation(request)
def viewdonation(request):
    # ss= request.session["u_id"]

    ob =Organdonation.objects.filter(status='approve')

    context = {
        'objval': ob
        }
    return render(request, 'organdonation/view donation.html', context)