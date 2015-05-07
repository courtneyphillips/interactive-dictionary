class Word
  attr_reader(:id, :term)

  @@dictionary = []

  define_method(:initialize) do |attributes|
    @term = attributes.fetch(:term)
    @id = @@dictionary.length().+(1)
  end

  define_singleton_method(:all) do
    @@dictionary
  end

  define_singleton_method(:clear) do
    @@dictionary = []
  end

  define_method(:save) do
    @@dictionary.push(self)
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
