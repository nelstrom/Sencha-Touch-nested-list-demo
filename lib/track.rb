class Track
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  property :position,  Integer

  property :album_id,  Integer
  belongs_to :album
end