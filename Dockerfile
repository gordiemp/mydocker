FROM ubuntu
MAINTAINER Maksym Gordienko

RUN apt-get update && apt-get install

ENTRYPOINT ["python", "gitclone.py"]
ARG SSH_PRIVATE_KEY
RUN mkdir /root/.ssh/
RUN echo "${SSH_PRIVATE_KEY}" > /root/.ssh/id_rsa

CMD ["gitclone.py"]
