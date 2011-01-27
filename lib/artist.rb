class Artist
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
  has n, :genres, :through => :albums
  
  def catalogue(options={})
    defaults = { :leaf => :album, :genre => nil }
    options = defaults.merge(options)

    if genre = options[:genre]
      albums = self.albums(:genre => genre)
    else
      albums = self.albums
    end

    {
      :text => self.name,
      :leaf => (options[:leaf] == self.class.to_s.downcase.to_sym),
      :items => albums.map { |album| album.catalogue }
    }
  end
end
