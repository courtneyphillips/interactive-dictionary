require('rspec')
require('interactive_dictionary')

describe(Word) do

  describe('.all') do
    it("is nil at first.") do
      expect(Word.all()).to(eq([]))
    end
  end

end




describe(Definition) do

  describe('.all') do
    it("Is empty at first.") do
      expect(Definition.all()).to(eq([]))
    end
  end


end
