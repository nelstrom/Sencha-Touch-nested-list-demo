require 'rubygems'
require 'sinatra'

mime_type :json, 'application/json'

get '/' do
  erb :index
end

get '/groceries.json' do
  send_file 'views/groceries.json', :type => :json
end