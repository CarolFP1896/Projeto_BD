from django import forms
from django.forms import ModelForm, widgets
from app.models import Usuarios

# Create the form class.
class UsuariosForm(ModelForm):
  password = forms.CharField(widget=forms.PasswordInput())
  class Meta:
    model = Usuarios
    fields = ['nome', 'email', 'cpf', 'password']
    # widgets = {
    #   'password': forms.PasswordInput(),
    # }