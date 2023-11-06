FROM ruby:2.7.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /samuraimart
WORKDIR /samuraimart
ADD Gemfile /samuraimart/Gemfile
ADD Gemfile.lock /samuraimart/Gemfile.lock
RUN bundle install
ADD . /samuraimart
