FROM ruby:2.7

WORKDIR /deps
COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install
