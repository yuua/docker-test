FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev git vim
RUN mkdir /myapp
WORKDIR /myapp
RUN git clone https://github.com/yuua/spark-training.git
WORKDIR /myapp/spark-training/ruby/itunes
RUN bundle install
ADD . /myapp
