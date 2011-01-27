class Catalogue
  def self.items
    { :items => Genre.all.map { |genre| genre.catalogue } }
  end
end