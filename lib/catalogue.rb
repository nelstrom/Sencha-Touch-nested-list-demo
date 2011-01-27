class Catalogue
  def self.items
    Genre.all.map do |genre|
      {
        :name => genre.name,
        :items => genre.artists.map do |artist|
          {
            :name => artist.name,
            :items => [artist.albums(:genre => genre)].map do |album|
              {
                :name => album.name,
                :items => [],
                :leaf => true
              }
            end
          }
        end
      }
    end
  end
end