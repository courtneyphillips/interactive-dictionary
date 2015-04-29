require('rspec')
require('interactive_dictionary')

describe(Definition) do

  describe('.all') do
    it("is empty at first.") do
      expect(Definition.all()).to(eq({nil => nil}))
    end
  end

end
