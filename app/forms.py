from django import forms
from django.forms import ModelForm
from app.models import Usuarios

# Create the form class.
class UsuariosForm(ModelForm):
  class Meta:
    model = Usuarios
    fields = ['nome', 'email', 'cpf', 'tipo', 'password']
    # widgets = {
    #   'password': forms.PasswordInput(),
    # }

class LoginForm(ModelForm):
  class Meta:
    model = Usuarios
    fields = ['email', 'password']