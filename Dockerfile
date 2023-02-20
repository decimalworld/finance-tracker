FROM ruby

WORKDIR /code/
COPY Gemfile* /code/
COPY setup.sh /code/
RUN sh setup.sh
ENV PORT 8080

EXPOSE 8080