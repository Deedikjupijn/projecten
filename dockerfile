# create a jekyll container from a ruby alpine image

# at a minimum, use Ruby 2.5 or later
FROM ruby:2.7-alpine:3.15

# install jekyll and bundler

RUN apk update
RUN apk add --no-cache build-base gcc cmake git 

RUN gem install bundler && gem install jekyll bundler
