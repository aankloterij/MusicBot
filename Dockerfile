FROM python:alpine

MAINTAINER Sidesplitter, https://github.com/SexualRhinoceros/MusicBot

#Install dependencies
RUN apk update && apk add ffmpeg libffi opus opus-dev libffi-dev ffmpeg-dev gcc make musl-dev musl

#Add musicBot
ADD . /musicBot
WORKDIR /musicBot

#Install PIP dependencies
RUN pip install -r requirements.txt

#Add volume for configuration
VOLUME /musicBot/config

CMD python run.py
