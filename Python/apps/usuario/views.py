from .models import Usuario
from .serializers import UsuarioSerializer
from rest_framework import viewsets # 

# Create your views here.

# def index(request):
#     return HttpResponse("Hola Mundo!")

class UsuarioViewSet(viewsets.ModelViewSet):
    queryset = Usuario.objects.all() # Lo que paso en Fields de la clase - Meta -
    serializer_class = UsuarioSerializer # JSON

    def listar_usuarios(self, request, *args, **kwargs):
        return super().list(request, *args, **kwargs)