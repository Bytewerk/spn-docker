FROM python:3.6-alpine

LABEL maintainer="nachtgold"

ADD ./website/code /code

RUN apk update && apk add gcc libc-dev jpeg mariadb-dev tk-dev tcl-dev tiff-dev openjpeg-dev
RUN pip install --trusted-host pypi.python.org -r /code/requirements.txt
RUN mv /code/Programmierspiel/local_settings.py.docker /code/Programmierspiel/local_settings.py

EXPOSE 8000
