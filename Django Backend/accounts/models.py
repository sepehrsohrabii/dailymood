from django.db import models
from django.contrib.auth.models import User

class UserInfo(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    birthday = models.DateField(blank=True)
    gender = models.CharField(max_length=20, blank=True,
        choices=[('Male', 'Male'),('Female', 'Female'), ('Other', 'Other')])
    phoneNumber = models.CharField(max_length=20)

    def __str__(self):
        return self.user.username