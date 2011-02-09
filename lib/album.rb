class Album
  include DataMapper::Resource
  include CatalogueItem

  property :id,   Serial
  property :name, String, :length => 0..50
  property :info, String, :length => 0..1000, :default => ""

  property :genre_id,  Integer
  property :artist_id,  Integer

  has n, :tracks
  belongs_to :genre
  belongs_to :artist

  def items(options={})
    self.tracks.all(:order => :position).map { |track| track.catalogue(options) }
  end

end
