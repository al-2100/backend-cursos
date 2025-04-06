FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential libpq-dev

# Copiar archivo de dependencias
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copiar código del proyecto
COPY . /app/

# Exponer el puerto y lanzar la aplicación
CMD ["gunicorn", "cursos_project.wsgi:application", "--bind", "0.0.0.0:8000"]
