require('rspec')
require('word')
require('definition')

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
    it("is saved for later use") do
      test_definition = Word.new("spiders")
      test_definition.save()
      expect(Word.all()).to(eq(["spiders"]))
    end
  end
end
