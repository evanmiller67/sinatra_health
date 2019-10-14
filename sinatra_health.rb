# myapp.rb
require 'sinatra'

set :bind, '0.0.0.0'

get '/health' do
 "I'm healthy bruh!"
end

get '/readiness' do
 "I'm ready bruh!"
end

get '/liveness' do
  ## Check memory & CPU usage
 "I'm live bruh!"
end
