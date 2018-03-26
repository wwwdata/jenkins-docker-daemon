FROM jenkins:latest

USER root
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates curl sudo
RUN curl -sSL https://get.docker.com/ | sh
RUN apt-get install -y docker-compose

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
