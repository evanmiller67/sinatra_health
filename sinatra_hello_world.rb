# myapp.rb
require 'sinatra'

set :bind, '0.0.0.0'
set :port, 4568

get '/hello' do
 "I'm a real app!!!"
end

