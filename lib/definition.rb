class Definition
  attr_reader(:definitions)

  @@definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_method(:link) do
    @@dictionary = {@words => @@definitions}
  end

end
