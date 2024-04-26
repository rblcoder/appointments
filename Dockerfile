FROM ruby:2.7.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client netcat
COPY . .
RUN gem install bundler -v "2.4"  
RUN bundle install 
