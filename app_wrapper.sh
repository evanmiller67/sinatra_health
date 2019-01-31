#! /bin/sh
nohup ruby /app/sinatra_health.rb >> /app.log 2>&1 &
ruby /app/sinatra_hello_world.rb
