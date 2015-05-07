class Definition

  @@definitions = []

  define_method(:initialize) do 
    @definition = definition
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_singleton_method(:all) do
    @@definitions
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
