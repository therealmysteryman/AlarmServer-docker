FROM python:2.7-alpine3.8

EXPOSE 4025

WORKDIR /var/

RUN apk update && \
    apk upgrade && \
    apk add git bash sed
RUN git clone https://github.com/juggie/AlarmServer.git

RUN pip install tornado

COPY alarmserver.cfg /var/AlarmServer/
COPY run.sh /var/

RUN chmod +x /var/run.sh

CMD /var/run.sh
