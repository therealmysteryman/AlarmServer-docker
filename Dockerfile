FROM python:2.7-alpine3.8

EXPOSE 4025

WORKDIR /var/

RUN apk update && \
    apk upgrade && \
    apk add git
RUN git clone https://github.com/juggie/AlarmServer.git

RUN pip install tornado

EXEC /usr/bin/python alarmserver.py -c alarmserver.cfg
