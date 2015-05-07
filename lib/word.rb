class Word
  attr_reader(:id, :word, :definitions)

  @@all_words = []

  define_method(:initialize) do |attributes|
    @term = attributes.fetch(:term)
    @definitions = []
    @id = @@all_words.length().+(1)
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_method(:define) do |definition|
    new_definition = Definition.new({:definition => definition})
    @definitions.push(definition)
  end

  # #for adding another definition to already-stored words
  # define_method(:add_definition) do |new_definition|
  #   @definitions.save(new_definition)
  #   @@dictionary[self.id] = [self.term, self.definitions]
  # end

  # define_method(:save) do
  #   @@dictionary[self.id] = [self.term, self.definitions]

# end
end
