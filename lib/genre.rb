class Genre
  include DataMapper::Resource
  include CatalogueItem

  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
  has n, :artists, :through => :albums

  def items(options={})
    self.artists.map { |artist| artist.catalogue(options) }
  end

  def catalogue_defaults
    { :leaf => :album, :genre => self }
  end
end
