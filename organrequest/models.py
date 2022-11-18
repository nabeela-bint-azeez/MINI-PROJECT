from django.db import models
from user.models import User
# Create your models here.
class Organrequest(models.Model):
    request_id = models.AutoField(primary_key=True)
    organ_name = models.CharField(db_column='organ _name', max_length=20)  # Field renamed to remove unsuitable characters.
    blood_group = models.CharField(max_length=20)
    status = models.CharField(max_length=20)
    user=models.ForeignKey(User,to_field='user_id',on_delete=models.CASCADE)
    # user_id = models.IntegerField()
    # doctor_id = models.IntegerField()
    age = models.IntegerField()

    class Meta:
        # managed = False
        db_table = 'organrequest'
