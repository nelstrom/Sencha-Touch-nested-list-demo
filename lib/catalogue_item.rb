module CatalogueItem
  def catalogue(options={})
    options = catalogue_defaults.merge(options)
    {
      :text => self.name,
      :leaf => (options[:leaf] == self.class.to_s.downcase.to_sym),
      :items => items(options)
    }
  end

  def items(options={})
    []
  end

  def catalogue_defaults
    { :leaf => :album }
  end
end
