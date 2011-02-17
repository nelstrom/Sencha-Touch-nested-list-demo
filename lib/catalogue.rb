class Catalogue
  def self.items(options={})
    defaults = { :leaf => :album }
    options = defaults.merge(options)
    genres = Genre.all(:order => :name)
    { :items => genres.map { |genre| genre.catalogue(options) } }
  end

  def self.import(data)
    data = OpenStruct.new(data)
    artist = Artist.first_or_create(
      :name => data.artist,
      :info => data.artistInfo
    )
    genre = Genre.first_or_create(:name => data.genre)
    album = Album.create(
      :name => data.name,
      :info => data.albumInfo,
      :artist_id => artist.id,
      :genre_id => genre.id
    )
    data.tracks ||= []
    data.tracks.each_with_index do |track, index|
      data = OpenStruct.new(track)
      album.tracks.create(
        :name => data.name,
        :duration => data.duration,
        :position => index
      )
    end
  end
end
