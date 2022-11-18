# Generated by Django 3.2.16 on 2022-10-12 05:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Assigndoctor',
            fields=[
                ('assign_id', models.AutoField(primary_key=True, serialize=False)),
                ('doctor_id', models.IntegerField()),
                ('type', models.CharField(max_length=20)),
                ('organ_name', models.CharField(db_column='organ name', max_length=20)),
            ],
            options={
                'db_table': 'assigndoctor',
            },
        ),
    ]
