FROM python:3.7-slim
ADD . /weather_balloon
WORKDIR /weather_balloon
RUN pip install Pillow \
                django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000
