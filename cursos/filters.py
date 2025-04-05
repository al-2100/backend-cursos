import django_filters
from .models import Curso

class CursoFilter(django_filters.FilterSet):
    activo = django_filters.BooleanFilter(field_name='activo')

    class Meta:
        model = Curso
        fields = ['activo']
