from rest_framework import routers
from .views import UsuarioViewSet

# Rutas de Usuarios
# CRUD
router = routers.DefaultRouter()
router.register(r'', UsuarioViewSet)

urlpatterns = router.urls