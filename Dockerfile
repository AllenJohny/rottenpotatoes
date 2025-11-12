FROM ruby:2.6.9

# System deps: Node for ExecJS, pg client for db tasks
RUN apt-get update -y && apt-get install -y build-essential nodejs postgresql-client

WORKDIR /app

# Rails 4 era bundler
RUN gem install bundler -v 1.17.3 --no-document

# Install gems (production only in the image)
COPY Gemfile Gemfile.lock ./
ENV BUNDLE_WITHOUT="development test"
RUN bundle _1.17.3_ install

# Copy app code
COPY . .

# Production env
ENV RAILS_ENV=production
ENV PORT=8080
ENV RAILS_LOG_TO_STDOUT=1
ENV RAILS_SERVE_STATIC_FILES=1

# No build-time asset precompile; runtime will handle assets.

EXPOSE 8080
CMD bundle _1.17.3_ exec rails server -e production -p 8080 -b 0.0.0.0
