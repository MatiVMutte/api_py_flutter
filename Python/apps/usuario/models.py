from django.db import models

# Create your models here.
class Usuario(models.Model):

    nome = models.CharField(max_length=100) # Varchar
    email = models.CharField(max_length=100)
    password = models.CharField(max_length=100)

    def __str__(self): # Sobreescribe toString()
        return self.nome
    
    class Meta:
        app_label = 'usuario'