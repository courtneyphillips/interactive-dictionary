class Definition
  @@definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
  end

  define_singleton_method(:all) do
    @definitions = []
  end

  # define_method(:define_word) do |definition|
  #   @@entry = []
  #   @definition = definition
  #   new_word = Word.new(@term)
  #   @@entry.push(new_word, definition
  # end

end


class Word

  define_method(:initialize) do |term|
    @term = term
  end

  define_singleton_method(:all) do
    @@dictionary = {@term => [@definition]}
  end
end
