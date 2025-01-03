from .models import Usuario
from .serializers import UsuarioSerializer
from rest_framework import viewsets

class UsuarioViewSet(viewsets.ModelViewSet):
    queryset = Usuario.objects.all() 
    serializer_class = UsuarioSerializer 
   
    # @api_view(['GET'])
    # def get_usuarios(request): 
    #     if request.method == 'GET':
    #         usuarios = Usuario.objects.all() 
    #         serializer = UsuarioSerializer(usuarios, many=True)
    #         return Response(serializer.data)
    
    # @api_view(['POST'])
    # def post_usuario(request):
    #     if request.method == 'POST':
    #         serializer = UsuarioSerializer(data=request.data)
    #         if serializer.is_valid():
    #             serializer.save()
    #             return Response(serializer.data, status=status.HTTP_201_CREATED)
    #         return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    # @api_view(['DELETE'])
    # def delete_usuario(request, pk):
    #     if request.method == 'DELETE':
    #         usuario = Usuario.objects.get(pk=pk)
    #         usuario.delete()
    #         return Response(status=status.HTTP_204_NO_CONTENT)
    
    # @api_view(['UPDATE'])
    # def update_usuario(request, pk):
    #     if request.method == 'UPDATE':
    #         usuario = Usuario.objects.get(pk=pk)
    #         serializer = UsuarioSerializer(usuario, data=request.data)
    #         if serializer.is_valid():
    #             serializer.save()
    #             return Response(serializer.data)
    #         return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)