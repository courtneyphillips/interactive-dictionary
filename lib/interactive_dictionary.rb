class Definition
  @@definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
  end

  define_singleton_method(:all) do
    @definitions = []
  end

end



class Word
  @@dictionary = []

  define_method(:initialize) do |term|
    @term = term
  end

  define_singleton_method(:all) do
    @@dictionary
  end

  define_method(:save) do
  @@dictionary.push(@term)
  @@dictionary.push(@definition)
  end

end
