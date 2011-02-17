class Track
  include DataMapper::Resource
  include CatalogueItem

  property :id,   Serial
  property :name, String, :length => 0..50
  property :info, String, :length => 0..255, :default => ""
  property :position,  Integer
  property :duration, Integer

  property :album_id,  Integer
  belongs_to :album

  validates_presence_of :name

  def leaf(options={})
    true
  end

end
