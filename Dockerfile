FROM selenium/standalone-firefox:latest

MAINTAINER Nikolay Kudryashov mikola-2@yandex.ru

RUN ls -l /home/seluser
RUN mkdir /home/seluser/Downloads
RUN ls -l /home/seluser

# Set permission to folder Downloads
RUN chmod -R 777 /home/seluser/Downloads
RUN ls -l /home/seluser
