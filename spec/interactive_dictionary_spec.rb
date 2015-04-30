require('rspec')
require('interactive_dictionary')

describe(Word) do

  describe('.all') do
    it("is nil at first.") do
      expect(Word.all()).to(eq([]))
    end
  end

  # describe ('.save') do
  #   it ('saves the term to the dictionary') do
  #     new_term = Word.new('fish').save
  #     expect(Term.all).to eql new_term
  #   end
  # end

end




describe(Definition) do

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

end
