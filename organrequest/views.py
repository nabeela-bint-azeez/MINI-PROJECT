from django.shortcuts import render
from organrequest.models import Organrequest
from assigndoctor.models import Assigndoctor

# Create your views here.
def addrequest(request):

    if request.method=='POST':
        ss= request.session["u_id"]
        ob=Organrequest()
        ob.organ_name=request.POST.get('organneeded')
        ob.blood_group=request.POST.get('bloodgrp')
        ob.age=request.POST.get('age')
        ob.user_id=ss
        ob.status='pending'
        ob.save()
    return render(request, 'organrequest/add organ request.html')
def manage(request):
    ob = Organrequest.objects.filter(status='pending')
    context = {
        'objval': ob
    }
    return render(request,'organrequest/manage organ request.html',context)

def viewrequest(request):
    # ss= request.session["u_id"]

    ob = Organrequest.objects.filter(status='approve')
    context = {
        'objval': ob
        }
    return render(request, 'organrequest/vwreq.html', context)
#
def approve(request,idd):
    obj=Organrequest.objects.get(request_id=idd)
    obj.status='approve'
    obj.save()
    return manage(request)
def reject(request,idd):
    obj=Organrequest.objects.get(request_id=idd)
    obj.status='reject'
    obj.save()
    return manage(request)


def vw(request):
    ss= request.session["u_id"]

    ob = Assigndoctor.objects.filter(user_id=ss)
    context = {
        'objval': ob
    }
    return render(request,'organrequest/vwrequest.html',context)
