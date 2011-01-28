require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'active_record'
require File.join(File.dirname(__FILE__), 'environment')

mime_type :json, 'application/json'

get '/' do
  erb :index
end

get '/albums/catalogue.xml' do
  Catalogue.items(:leaf => :album).to_xml
end

get '/artists/catalogue.json' do
  Catalogue.items(:leaf => :artist).to_json
end

get '/albums/catalogue.json' do
  Catalogue.items(:leaf => :album).to_json
end

get '/tracks/catalogue.json' do
  Catalogue.items(:leaf => :track).to_json
end
