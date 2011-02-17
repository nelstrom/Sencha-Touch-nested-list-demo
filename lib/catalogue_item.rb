module CatalogueItem
  def catalogue(options={})
    options = catalogue_defaults.merge(options)
    {
      :text => self.name,
      :info => self.info,
      :duration => (self.respond_to?(:duration) ? self.duration : nil),
      :model => self.class.to_s,
      :leaf => leaf(options),
      :items => items(options)
    }
  end

  def items(options={})
    []
  end

  def leaf(options={})
    options[:leaf] == self.class.to_s.downcase.to_sym
  end

  def catalogue_defaults
    { :leaf => :album }
  end
end
