require 'rubygems'
require 'bundler/setup'

require 'dm-core'
require 'dm-validations'
require 'dm-aggregates'
require 'dm-serializer'
require 'dm-migrations'
require 'ostruct'

require File.join(File.dirname(__FILE__), 'lib/catalogue_item')

require 'sinatra' unless defined?(Sinatra)

configure do
  SiteConfig = OpenStruct.new(
                 :title => 'Sencha Nested List',
                 :author => 'Drew Neil',
                 :url_base => 'http://localhost:4567/'
               )

  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

  DataMapper.setup(:default, (ENV["DATABASE_URL"] || 'postgres://localhost/music_catalogue'))

end

configure :development do
  Bundler.require(:development)
end
