FROM python:3.7-alpine
LABEL mantainer="Euclidean App Developer"

ENV PYTHONUNBUFFERED 1

COPY .//requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

RUN mkdir /app 
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user