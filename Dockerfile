FROM ruby:3.1.2-alpine

RUN apk add --update --no-cache  --virtual run-dependencies \
    build-base \
    postgresql-client \
    postgresql-dev \
    yarn \
    git \
    tzdata \
    libpq \
    && rm -rf /var/cache/apk/*

WORKDIR /src

ENV BUNDLE_PATH /gems

COPY Gemfile Gemfile.lock /src/

RUN bundle install

COPY . /src

ENTRYPOINT ["ruby","bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000