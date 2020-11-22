FROM python:3.7-alpine
MAINTAINER spenas

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /django-advanced
WORKDIR /django-advanced
COPY ./app /django-advanced

RUN adduser -D user
USER user 
