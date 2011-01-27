require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require File.join(File.dirname(__FILE__), 'environment')

mime_type :json, 'application/json'

get '/' do
  erb :index
end

get '/catalogue.json' do
  Catalogue.items.to_json
end