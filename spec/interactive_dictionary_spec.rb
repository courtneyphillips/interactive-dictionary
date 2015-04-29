require('rspec')
require('interactive_dictionary')

describe(Definition) do

  describe('.all') do
    it("equals nil at first.") do
      expect(Definition.all()).to(eq({nil => nil}))
    end
  end

  # describe('#define') do
  #   it("links a term with its definition.") do
  #     test_term = Word.new('spiders')
  #     test_term.define('the spookiest')
  #     expect(Word.new('spiders').define).to(eq('the spookiest'))
  #   end
  # end


end

describe(Word) do
  describe('.all') do
    it("is empty at first.") do
      expect(Word.all()).to(eq([]))
    end
  end

end
