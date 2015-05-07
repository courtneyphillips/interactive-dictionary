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

  describe('#id') do
    it("returns the id number of a given word") do
      test_word = Word.new({:term => "Spiders"})
      test_word.save()
      expect(test_word.id).to(eq(1))
    end
  end

  describe('#definitions') do
    it("is empty at first") do
      test_word = Word.new({:term => "Spiders"})
      expect(test_word.definitions()).to(eq([]))
    end

    it("will return all definitions of a word") do
      test_word = Word.new({:term => "Spiders"})
      test_word.define("the spookiest")
      test_word.define("really yucky")
      expect(test_word.definitions()).to(eq(["the spookiest", "really yucky"]))
    end
  end

  describe('#define') do
    it("adds a definition to a word") do
      test_word = Word.new({:term => "Spiders"})
      test_word.define("the spookiest")
      expect(test_word.definitions()).to(eq(["the spookiest"]))
    end
  end

  describe('.find') do
    it("finds a word by its unique id") do
      test_word = Word.new({:term => "Spiders"})
      test_word.save()
      test_word2 = Word.new({:term => "Scorpions"})
      test_word2.save()
      expect(Word.find(2)).to(eq(test_word2))
    end
  end
end
