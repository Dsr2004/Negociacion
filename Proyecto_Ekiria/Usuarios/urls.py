from django.urls import path
from Usuarios.views import PassR, Perfil, Admin, Notification
urlpatterns = [
    path('RecuperarContrase├▒a/', PassR, name="RecuperarContrase├▒a"),
    path('Perfil/', Perfil, name="Perfil"),
    path('Administracion/', Admin, name="Administracion"),
    path('Notificaciones/', Notification, name="Notify"),
    # path('', Usertoken.as_view(), name = "refresh_token"),
]