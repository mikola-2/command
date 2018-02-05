FROM selenium/standalone-firefox:latest

MAINTAINER Nikolay Kudryashov mikola-2@yandex.ru

RUN ls -l
RUN cd home
RUN ls -l
RUN cd seluser
RUN ls -l
RUN cd Downloads
RUN ls -l
RUN cd ..

# Set permission to folder Downloads
RUN chmod -R 777 Downloads

# Add source-code
COPY . /repo

ENV PATH /repo:${PATH}
ENTRYPOINT ["codecept"]

# Prepare host-volume working directory
RUN mkdir /project
WORKDIR /project
