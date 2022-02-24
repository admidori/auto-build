FROM python:3.6
USER root

RUN apt-get -y update
RUN apt-get -y install vim

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
# Write what you want to install package.
RUN pip install matplotlib numpy pandas tensorflow tensorboard
