# myapp.rb
require 'sinatra'

set :bind, '0.0.0.0'

get '/health' do
 "I'm health bruh!"
end

get '/readiness' do
 "I'm health bruh!"
end

get '/liveness' do
  ## Check memory & CPU usage
 "I'm health bruh!"
end
