FROM ruby:2.6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y nodejs postgresql-client sqlite3 vim --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN gem install bundler:2.0.2
RUN bundle config --global frozen 1
RUN bundle install --without development test

COPY . /usr/src/app
RUN bundle exec rake DATABASE_URL=postgresql:does_not_exist assets:precompile

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
