FROM ruby:2.6-alpine3.8

WORKDIR /app

ADD sinatra_health.rb /app
ADD sinatra_hello_world.rb /app
ADD app_wrapper.sh /app
RUN gem install sinatra

EXPOSE 4567 4568

CMD [ "/app/app_wrapper.sh" \
#        "pipenv",               \
#        "run",                  \
#        "gunicorn",             \
#        "-b", ":5000",          \
#        "main:app",             \
#        "--timeout", "12000",   \
#        "--max-requests", "2",  \
#        "--keep-alive", "5",    \
#        "--workers", "16"       \
]
