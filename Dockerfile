FROM ruby:2.4.3-alpine

ENV LANG C.UTF-8
ENV LANGUAGE C.UTF-8
ENV LC_ALL C.UTF-8

RUN apk --no-cache add build-base libcurl

COPY . /app
WORKDIR /app

RUN bundle install
