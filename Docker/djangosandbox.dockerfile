FROM python:3.8-slim
RUN pip install django
RUN pip install django-environ
RUN pip install gunicorn
RUN apt-get update && apt-get -qq -y install curl
WORKDIR /app
HEALTHCHECK --interval=20s --timeout=3s \
CMD curl -f http://localhost:8000/ || exit 1
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "DjangoSandbox.wsgi:application"]
COPY .. /app
