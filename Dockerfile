FROM ubuntu:16.04
FROM python:3.6-alpine
MAINTAINER Maksym Gordienko

RUN apk update $$ apk add

ENTRYPOINT ["python", "gitclone.py"]
ARG SSH_PRIVATE_KEY
RUN mkdir /root/.ssh/
RUN echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa

CMD ["gitclone.py"]
VOLUME /my-volume
RUN echo "hello devops" > /my-volume/greeting
