FROM python:3.5.2-beta
MAINTAINER dreipol GmbH <dev@dreipol.ch>

RUN mkdir -p /app
WORKDIR /app

ONBUILD ADD requirements.txt /app

ONBUILD RUN pip install -r requirements.txt

ONBUILD COPY . /app
