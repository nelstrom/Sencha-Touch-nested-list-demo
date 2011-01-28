class Catalogue
  def self.items(options={})
    defaults = { :leaf => :album }
    options = defaults.merge(options)
    genres = Genre.all(:order => :name)
    { :items => genres.map { |genre| genre.catalogue(options) } }
  end

  def self.import(data)
    data = OpenStruct.new data
    artist = Artist.first_or_create(:name => data.artist)
    genre = Genre.first_or_create(:name => data.genre)
    album = Album.create(
      :name => data.name,
      :artist_id => artist.id,
      :genre_id => genre.id
    )
    data.tracks ||= []
    data.tracks.each_with_index do |track, index|
      album.tracks.create(:name => track, :position => index)
    end
  end
end
