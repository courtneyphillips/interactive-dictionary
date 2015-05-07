require('rspec')
require('word')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('.all') do
    it("Is empty at first.") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it("empties the array of words") do
      expect(Word.clear()).to(eq([]))
    end
  end

describe('#save') do
  it("saves and returns a given word") do
    test_word = Word.new({:term => "Spiders"})
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end



  # describe('#save') do
  #   it("is saved for later use") do
  #     test_word = Word.new("spiders")
  #     test_definition = Definition.new("spookiest")
  #     test_word.save(test_definition)
  #     expect(Word.all()).to(eq({"spiders" => "spookiest"}))
  #   end
  # end
end
