require('rspec')
require('definition')
require('word')

describe(Word) do

  describe("#term") do
    it("allows you to add a new term to the dictionary") do
      test_term = Word.new("spider")
      expect(test_term.term()).to(eq("spider"))
    end
  end

end
