class Genre
  include DataMapper::Resource
  property :id,   Serial
  property :name, String, :length => 0..50
  
  has n, :albums
  has n, :artists, :through => :albums

  def catalogue(options={})
    defaults = { :leaf => :album, :genre => self }
    defaults.merge(options)
    {
      :text => self.name,
      :leaf => (options[:leaf] == self.class.to_s.downcase.to_sym),
      :items => self.artists.map { |artist| artist.catalogue(options) }
    }
  end
end
