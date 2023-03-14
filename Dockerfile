FROM ruby:3.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
RUN chmod +x /app/start_app.sh
EXPOSE 3000
CMD ["/app/start_app.sh"]
