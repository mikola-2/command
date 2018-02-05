FROM selenium/standalone-firefox:latest

MAINTAINER Nikolay Kudryashov mikola-2@yandex.ru

# Set permission to folder Downloads
RUN chmod -R 777 /home/seluser/Downloads

# Add source-code
COPY . /repo

ENV PATH /repo:${PATH}
ENTRYPOINT ["codecept"]

# Prepare host-volume working directory
RUN mkdir /project
WORKDIR /project
