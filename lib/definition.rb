class Definition
  attr_reader(:definition)

  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

#   define_method(:save) do
#     @@definitions.push(self)
#
#
#   # define_method(:link) do
#   #   @@dictionary = {@words => @@definitions}
#   # end
#
# end
end
