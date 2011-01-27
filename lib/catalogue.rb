class Catalogue
  def self.items(options={})
    defaults = { :leaf => :album }
    options = defaults.merge(options)
    { :items => Genre.all.map { |genre| genre.catalogue(options) } }
  end
end
