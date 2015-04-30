require('rspec')
require('interactive_dictionary')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('.all') do
    it("is nil at first.") do
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


describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('.all') do
    it("Is empty at first.") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it("empties the array of definitions") do
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#save') do
    it("is saved for later use") do
      test_definition = Definition.new("the spookiest")
      test_definition.save()
      expect(Definition.all()).to(eq(["the spookiest"]))
    end
  end

  describe('#link') do
    it ("links terms and definitions together") do
      test_term = Word.new("spider")
      test_term.save()
      test_definition = Definition.new("spooky")
      test_definition.save()
      expect(test_definition.link()).to(eq({"spider" => "spooky"}))
    end
  end



end
