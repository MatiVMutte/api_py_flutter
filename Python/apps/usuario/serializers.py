from rest_framework import serializers
from .models import Usuario

class UsuarioSerializer(serializers.ModelSerializer): # Herencia
    class Meta:
        model = Usuario
        fields = '__all__' # Campos a mostrar de Usuario
                            # fields = ('name', 'email', 'password') # Campos a mostrar de Usuario

