FROM ruby:2.6.9
RUN apt-get update -y && apt-get install -y build-essential nodejs postgresql-client
WORKDIR /app

RUN gem install bundler -v 1.17.3 --no-document
COPY Gemfile Gemfile.lock ./
ENV BUNDLE_WITHOUT="development test"
RUN bundle _1.17.3_ install

COPY . .

# ---- add these lines before precompile ----
ENV RAILS_ENV=production
ENV PORT=8080
ENV RAILS_LOG_TO_STDOUT=1
ENV RAILS_SERVE_STATIC_FILES=1
ENV SECRET_KEY_BASE=dummy
# -------------------------------------------

RUN bundle _1.17.3_ exec rake assets:precompile

EXPOSE 8080
CMD bundle _1.17.3_ exec rails server -e production -p 8080 -b 0.0.0.0
