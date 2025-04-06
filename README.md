# Proyecto Cursos API

Este proyecto es una API para la gestión de cursos utilizando Django y Django REST Framework.

**Frontend:** Puedes visitar el repositorio del frontend en [https://github.com/al-2100/frontend-cursos](https://github.com/al-2100/frontend-cursos)

## Requisitos

- Python 3.10+
- PostgreSQL
- Docker (opcional)

## Instalación

### Opción 1: Instalación con Docker

1. Asegúrate de tener Docker instalado.
2. Clona el repositorio:
   ```
   git clone https://github.com/al-2100/backend-cursos
   cd backend-cursos
   ```
3. Configura las variables de entorno en el archivo `.env` (crea uno siguiendo el ejemplo):
   ```
   SECRET_KEY=django-insecure-^&m2xzyt&9b_0sj6ov7y4i%-tx6@kk5e2$6w+7e(u4w_@2(3wd
   DEBUG=True
   DB_NAME=...
   DB_USER=...
   DB_PASSWORD=...
   DB_HOST=...
   DB_PORT=...
   ```
4. Construye la imagen de Docker:
   ```
   docker build -t backend-cursos .
   ```
5. Inicia el contenedor:
   ```
   docker run --env-file .env -p 8000:8000 backend-cursos
   ```

### Opción 2: Instalación sin Docker

1. Clona el repositorio:
   ```
   git clone https://github.com/al-2100/backend-cursos
   cd backend-cursos
   ```
2. (Opcional) Crea y activa un entorno virtual:
   ```
   python -m venv venv
   source venv/bin/activate   # En Linux/Mac
   venv\Scripts\activate      # En Windows
   ```
3. Instala las dependencias:
   ```
   pip install -r requirements.txt
   ```
4. Configura el archivo `.env` con las variables de entorno necesarias (ver el ejemplo):
   ```
   SECRET_KEY=...
   DEBUG=True
   DB_NAME=...
   DB_USER=...
   DB_PASSWORD=...
   DB_HOST=...
   DB_PORT=...
   ```
5. Aplica las migraciones:
   ```
   python manage.py migrate
   ```
6. Ejecuta el servidor de desarrollo:
   ```
   python manage.py runserver
   ```

## Uso de la API

- La API se encuentra disponible en la ruta `/api/`.
- La documentación interactiva Swagger se encuentra en `/swagger/`.

## Notas

- Se utiliza Django Filters para la filtración de datos.
- El proyecto incluye configuraciones para CORS y autenticación tanto básica como de sesión.

## Integración de Herramientas de Inteligencia Artificial en el Desarrollo del Proyecto

Durante el desarrollo del proyecto, se integró inteligencia artificial para optimizar la productividad y mejorar la calidad del código. En particular, se utilizó GitHub Copilot para:

- **Autocompletado de código:** Acelerando la escritura de funciones y reduciendo la incidencia de errores comunes.
- **Automatización de tareas rutinarias:** Incluyendo la migración de variables importantes a variables de entorno, y la generación de archivos clave como `requirements.txt` y el `Dockerfile`.
- **Generación de mensajes de commit:** Contribuyendo a mantener un historial de cambios claro y consistente.
- **Redacción de instrucciones del README:** Facilitando la elaboración de diversas secciones y detalles en la documentación del proyecto.
- **Activación de CORS:** Asistiendo en la configuración necesaria para habilitar CORS en la aplicación.

Esta integración me permitió enfocarme en los aspectos críticos del desarrollo, garantizando una entrega más ágil y eficiente del proyecto.