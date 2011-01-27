class Artist
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
  has n, :genres, :through => :albums
  
  def catalogue(genre)
    {
      :text => self.name,
      :items => self.albums(:genre => genre).map { |album| album.catalogue }
    }
  end
end