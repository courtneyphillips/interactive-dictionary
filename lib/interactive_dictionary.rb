class Definition
  @@dictionary = {}

  define_method(:initialize) do |definition|
    @definition = definition
  end

  define_singleton_method(:all) do
    @@dictionary = {@term => @definition}
  end

end


class Word
  @@words = []

  define_method(:initialize) do |term|
    @term = term
  end

  define_singleton_method(:all) do
    @@words
  end
end
