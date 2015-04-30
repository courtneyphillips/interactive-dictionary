class Definition
  @@definitions = []
  @@dictionary = {}

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
    @@definitions.push(@definition)
  end

  define_method(:link) do
  @@dictionary = {@words => @@definitions}
end

end



class Word
  @words = []

  define_method(:initialize) do |term|
    @term = term
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:save) do
    @@words.push(@term)
  end

end
