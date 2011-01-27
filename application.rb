require 'rubygems'
require 'sinatra'

mime_type :json, 'application/json'

get '/' do
  erb :index
end

get '/catalogue.json' do
  send_file 'views/catalogue.json', :type => :json
end