# From the smallest Python image, install django and gunicorn and install curl
FROM python:3.8-slim
RUN pip install django
RUN pip install django-environ
RUN pip install gunicorn
RUN apt-get update && apt-get -qq -y install curl
# Configure a healthcheck that will restart the image if it fails
HEALTHCHECK --interval=20s --timeout=3s \
CMD curl -f http://localhost:8000/ || exit 1
# Finally, set the working directory, the command to execute on image start and copy the app files
WORKDIR /app
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "DjangoSandbox.wsgi:application"]
COPY .. /app
