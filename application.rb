require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'active_record'
require File.join(File.dirname(__FILE__), 'environment')

mime_type :json, 'application/json'

get '/' do
  erb :index
end

get '/artists/catalogue.json' do
  content_type :json
  JSON.pretty_generate(Catalogue.items(:leaf => :artist))
end

get '/albums/catalogue.json' do
  content_type :json
  JSON.pretty_generate(Catalogue.items(:leaf => :album))
end

get '/tracks/catalogue.json' do
  content_type :json
  JSON.pretty_generate(Catalogue.items(:leaf => :track))
end
