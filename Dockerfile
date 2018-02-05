FROM selenium/standalone-firefox:latest

MAINTAINER Nikolay Kudryashov mikola-2@yandex.ru

RUN ls -l
RUN cd home
RUN ls -l /home/
RUN ls -l /home/seluser

# Set permission to folder Downloads
RUN chmod -R 777 Downloads
