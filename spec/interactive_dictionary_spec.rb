require('rspec')
require('interactive_dictionary')

describe(Word) do
  describe('.all') do
    it("is nil at first.") do
      expect(Word.all()).to(eq({nil => [nil]}))
    end
  end

end


describe(Definition) do

  describe('.all') do
    it("Is empty at first.") do
      expect(Definition.all()).to(eq([]))
    end
  end

  # describe('#define_word') do
  #   it("links a term with its definition.") do
  #     test_term = Word.new('spiders')
  #     test_term.define_word('the spookiest')
  #     expect(Definition.all()).to(eq(["spiders","the spookiest"]))
  #   end
  # end


end
