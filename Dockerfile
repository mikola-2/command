FROM selenium/standalone-firefox:latest

MAINTAINER Nikolay Kudryashov mikola-2@yandex.ru

# Create folder Downloads
RUN mkdir /home/seluser/Downloads

# Set permission to folder Downloads
RUN chmod -R 777 /home/seluser/Downloads
RUN ls -l /home/seluser
