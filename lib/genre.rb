class Genre
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
end