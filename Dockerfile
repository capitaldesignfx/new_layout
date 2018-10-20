FROM ruby:2.4.3

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

COPY . /app
WORKDIR /app

RUN bundle install
