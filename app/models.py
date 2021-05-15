from django.db import models

# Create your models here.
class Usuarios(models.Model):
    nome = models.CharField(max_length=150)
    email = models.CharField(max_length=100)
    cpf = models.IntegerField(primary_key=True)
    tipo = models.BooleanField(default=False)
    password = models.CharField(max_length=100, default="")