class Definition
  @@dictionary = {}

  define_method(:initialize) do |term, definition|
    @term = term
    @definition = definition
  end

  define_singleton_method(:all) do
    @@dictionary = {@term => @definition}
  end

end
