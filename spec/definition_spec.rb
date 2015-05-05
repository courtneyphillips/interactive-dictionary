require('rspec')
require('definition')
require('word')

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
    it("Clears all previously entered definitions.") do
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#save') do
    it("Saves the definition to the dictionary.") do
      test_definition = Definition.new("the spookiest")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end



end
