from django.shortcuts import render
from assigndoctor.models import Assigndoctor
from doctor.models import Doctor
from organrequest.models import Organrequest
from user.models import User
# Create your views here.
def postassign(request,idd):

    obj1=Organrequest.objects.all()
    obj=Doctor.objects.all()
    context={
        'objval':obj,
        'obj':obj1
    }
    if request.method=='POST':
        ob=Assigndoctor()
        ob.doctor_id=request.POST.get('dd')
        ob.request_id=idd
        ob.user_id=ob.request.user_id
        # ob.type="organ_request"
        ob.status="pending"
        ob.save()

    return render(request,'assigndoctor/assign.html',context)

def viewassign(request):
    ob = Assigndoctor.objects.filter(status='pending')
    context = {
        'obj': ob
    }
    return render(request,'assigndoctor/view assign.html',context)

# def viewrequest(request):
#         ob = Organrequest.objects.filter(status='approve')
#         context = {
#             'objval': ob
#         }
#         return render(request, 'assigndoctor/vwreq.html', context)

def available(request,idd):
    obj=Assigndoctor.objects.get(assign_id=idd)
    obj.status='available'
    obj.save()

    uobbj=User.objects.get(user_id=obj.user_id)

    # return render(request,'assigndoctor/message.html')



    #############################3
    import requests

    url = "https://www.fast2sms.com/dev/bulkV2"

    payload = "message=YOUR REQUEST FOR ORGAN HAS BEEN APPROVED,AN ORGAN MATCHING REQUEST IS FOUND&language=english&route=q&numbers="+uobbj.phone
    headers = {
        'authorization': "rKh6lSx9JtUcOVjmBg5A1eIQDyYPNo3fR0MqizZTHGE4b8Xdv22vW8jnYrIscpVkqCNth5U3wSzTxlBg",
        'Content-Type': "application/x-www-form-urlencoded",
        'Cache-Control': "no-cache",
    }

    response = requests.request("POST", url, data=payload, headers=headers)

    print(response.text)


    #################################


    return viewassign(request)

def unavailable(request,idd):
    obj=Assigndoctor.objects.get(assign_id=idd)
    obj.status='unavailable'
    obj.save()
    return viewassign(request)

def status(request):
    # ss= request.session["u_id"]
    ob = Assigndoctor.objects.all()
    context = {
        'objval': ob
        }
    return render(request,'assigndoctor/orgstatus.html',context)