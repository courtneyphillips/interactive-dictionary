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
end
