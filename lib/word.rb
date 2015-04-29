class Word
  @@dictionary = []

  define_method(:initialize) do |term|
    @term = term
  end

  define_method(:term) do
    @term
  end

  define_method(:save) do
    @@dictionary.push(self)
  end

  define_singleton_method(:all) do
    @@dictionary
  end

  define_singleton_method(:clear) do
    @@dictionary = []
  end

end
