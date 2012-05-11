from django.db import models

# Create your models here.
class Giang_vien(models.Model):
    MGV = models.CharField("MGV", max_length = 4, primary_key = True )
