from django.shortcuts import render

# Create your views here.
def home(request):

    return render(request, 'temp/home.html')


def admin(request):
    return render(request, 'temp/admin.html')


def user(request):
    return render(request, 'temp/user.html')

def doctor(request):
    return render(request, 'temp/doctor.html')




