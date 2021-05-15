from django.shortcuts import render, redirect
from app.forms import UsuariosForm
from app.models import Usuarios
from django.core.paginator import Paginator

# Create your views here.
def login(request):
  data = {}
  data['form'] = UsuariosForm()
  if request.method == "POST":
    data = UsuariosForm(request.POST)
    user = (data["email"].value())
    senha = (data["password"].value())
    return render(request, 'form.html')
  else:
    data = {}
    data['form'] = UsuariosForm()
    return render(request, 'login.html', data)

def home(request):
  data = {}
  data['form'] = UsuariosForm()
  search = request.GET.get('search')
  if search:
    data['db'] = Usuarios.objects.filter(nome__icontains=search)
  else:
    data['db'] = Usuarios.objects.all()
  all = Usuarios.objects.all()
  paginator = Paginator(all, 4)
  pages = request.GET.get('page')
  data['db'] = paginator.get_page(pages)
  return render(request, 'index.html', data)

def form(request):
  data = {}
  data['form'] = UsuariosForm()
  return render(request, 'form.html', data)

def create(request):
  form = UsuariosForm(request.POST or None)
  if form.is_valid():
    form.save()
    return redirect('home')

def view(request, pk):
  data = {}
  data['db'] = Usuarios.objects.get(pk=pk)
  return render(request, 'view.html', data)

def edit(request, pk):
  data = {}
  data['db'] = Usuarios.objects.get(pk=pk)
  data['form'] = UsuariosForm(instance=data['db'])
  return render(request, 'form.html', data)

def update(request, pk):
  data = {}
  data['db'] = Usuarios.objects.get(pk=pk)
  form = UsuariosForm(request.POST or None, instance=data['db'])
  if form.is_valid():
    form.save()
    return redirect('home')

def delete(request, pk):
  db = Usuarios.objects.get(pk=pk)
  db.delete()
  return redirect('home')