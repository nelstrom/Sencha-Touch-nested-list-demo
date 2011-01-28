class Genre
  include DataMapper::Resource
  include CatalogueItem

  property :id,   Serial
  property :name, String, :length => 0..50
  property :info, String, :length => 0..255, :default => ""
  
  has n, :albums
  has n, :artists, :through => :albums

  def items(options={})
    self.artists.all(:order => :name).map { |artist| artist.catalogue(options) }
  end

  def catalogue_defaults
    { :leaf => :album, :genre => self }
  end
end
