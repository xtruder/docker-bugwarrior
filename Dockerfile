FROM python:2

RUN pip install git+git://github.com/ralphbean/bugwarrior.git@master
RUN apt update && apt install -y task
RUN mkdir /root/.task
COPY taskrc /root/.taskrc
