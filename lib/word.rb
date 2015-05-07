class Word
  attr_reader(:id, :term, :definitions)

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

  define_method(:define) do |meaning|
    Definition.new({:meaning => meaning})
    @definitions.push(meaning)
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@all_words.each() do |word|
      if word.id == id
        found_word = word
      end
    end
      found_word
    end
end
