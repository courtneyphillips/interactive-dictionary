require('rspec')
require('definition')
require('word')

describe(Word) do

  describe('#define') do
    it("returns the definition of a given word") do
      test_word = "humblebrag"
      test_definition = "A modest statement that actually draws attention to something of which one is proud."
      expect("humblebrag".define()).to(eq("A modest statement that actually draws attention to something of which one is proud."))
    end
  end

end
