class Definition
  define_method(:initialize) do
    @@dictionary = {}
  end

  define_method(:save) do |term, definition|
    @term = term
    @definition = definition
    @@dictionary.push(@term,@definition)


end

class Word
  define_method(:initialize) do
end
