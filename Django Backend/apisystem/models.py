from datetime import datetime
from django.db import models
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator, MinValueValidator


class UserMood(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    dateTime = models.DateField(auto_now_add=True)
    mood = models.IntegerField(
        default=5,
        validators=[MaxValueValidator(10), MinValueValidator(1)]
     )
    def __str__(self):
        return self.user.username