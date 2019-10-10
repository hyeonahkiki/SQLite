from django.db import models

# Create your models here.

class Users(models.Model):
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    age = models.IntegerField()
    country = models.TextField()
    phone = models.CharField(max_length=100)
    balance = models.IntegerField()