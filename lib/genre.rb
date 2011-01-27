class Genre
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
  has n, :artists, :through => :albums

  def catalogue
    {
      :name => self.name,
      :items => self.artists.map { |artist| artist.catalogue(self) }
    }
  end
end