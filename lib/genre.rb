class Genre
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
  has n, :artists, :through => :albums

  def items
    albums(:fields => [:name])
  end
end