from django.db import models
# from hospital.models import Hospital

# Create your models here.
# class Doctor(models.Model):
#     # hospital_id = models.CharField(max_length=11)
#     hospital=models.ForeignKey(Hospital,on_delete=models.CASCADE)
#     doctor_id = models.AutoField(primary_key=True)
#     doctor_name = models.CharField(max_length=20)
#     specialisation = models.CharField(max_length=20)
#     password = models.CharField(max_length=20)
#
#     class Meta:
#         managed = False
#         db_table = 'doctor'
class Doctor(models.Model):
    doctor_id = models.AutoField(primary_key=True)
    doctor_name = models.CharField(max_length=20)
    specialisation = models.CharField(max_length=20)
    password = models.CharField(max_length=20)
    hospital_name = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'doctor'

