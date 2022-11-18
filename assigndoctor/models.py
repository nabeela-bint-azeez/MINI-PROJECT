from django.db import models
from doctor.models import Doctor
from organrequest.models import Organrequest
from user.models import User
# Create your models here.


class Assigndoctor(models.Model):
    assign_id = models.AutoField(primary_key=True)
    doctor = models.ForeignKey(Doctor, to_field='doctor_id', on_delete=models.CASCADE)
    # doctor_id = models.IntegerField()
    # type = models.CharField(max_length=20)
    request = models.ForeignKey(Organrequest,to_field='request_id',on_delete=models.CASCADE)
    # request_id = models.CharField(max_length=20)
    # user = models.ForeignKey(User, to_field='user_id', on_delete=models.CASCADE)
    status = models.CharField(max_length=20)
    user_id = models.IntegerField()


    class Meta:
        managed = False
        db_table = 'assigndoctor'

