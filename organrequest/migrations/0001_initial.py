# Generated by Django 3.2.16 on 2022-10-12 05:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Organrequest',
            fields=[
                ('request_id', models.AutoField(primary_key=True, serialize=False)),
                ('organ_name', models.CharField(db_column='organ _name', max_length=20)),
                ('blood_group', models.CharField(max_length=20)),
                ('status', models.CharField(max_length=20)),
                ('user_id', models.IntegerField()),
                ('doctor_id', models.IntegerField()),
                ('age', models.IntegerField()),
            ],
            options={
                'db_table': 'organrequest',
            },
        ),
    ]
