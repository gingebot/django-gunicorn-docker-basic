FROM python:3-slim
MAINTAINER gingebot

ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT
COPY . .
RUN pip install -r requirements.txt

CMD [ "gunicorn", "django_ex2.wsgi", "-b", "0.0.0.0:8000", "--access-logfile", "-" ]
EXPOSE 8000
