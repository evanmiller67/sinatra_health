FROM ruby:2.6-alpine3.8

WORKDIR /app

ADD sinatra_health.rb /app
ADD sinatra_hello_world.rb /app
RUN gem install sinatra

EXPOSE 4567 4568

CMD ["nohup", "ruby", "/app/sinatra_health.rb", ">>", "app.log", "2>&1", "&", \
        "&&", \
        "ruby", "/app/sinatra_hello_world.rb" \
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
