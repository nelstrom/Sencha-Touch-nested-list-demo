module CatalogueItem
  def catalogue(options={})
    options = catalogue_defaults.merge(options)
    append_fields({
      :text => self.name,
      :info => self.info,
      :model => self.class.to_s,
      :leaf => leaf(options),
      :items => items(options)
    })
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

  # Models can use this method to inject any custom fields
  # The basic implementation returns what it was passed.
  def append_fields(items)
    items
  end
end
