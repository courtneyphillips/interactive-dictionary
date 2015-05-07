class Definition
  attr_reader(:meaning)

  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @meaning = attributes.fetch(:meaning)
  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

end
