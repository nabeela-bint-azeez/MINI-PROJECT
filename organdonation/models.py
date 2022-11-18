from django.db import models
from user.models import User
# Create your models here.
class Organdonation(models.Model):
    donation_id = models.AutoField(primary_key=True)
    organ_name = models.CharField(max_length=20)
    blood_group = models.CharField(max_length=20)
    # user_id = models.IntegerField()
    user = models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)

    date = models.DateField()
    donor_name = models.CharField(max_length=20)
    status = models.CharField(max_length=20)
    age = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'organdonation'

