# Generated by Django 3.2.16 on 2022-10-12 05:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Organdonation',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('donation_id', models.IntegerField()),
                ('organ_name', models.CharField(max_length=20)),
                ('blood_group', models.CharField(max_length=20)),
                ('user_id', models.IntegerField()),
                ('date', models.DateField()),
                ('donor_name', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'organdonation',
            },
        ),
    ]
