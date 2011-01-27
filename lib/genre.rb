class Genre
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
  has n, :artists, :through => :albums

  def self.catalogue
    Genre.all.map do |genre|
      {
        :name => genre.name,
        :items => genre.artists.map { |artist| artist.catalogue(genre) }
      }
    end
  end
end