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

  describe(".all") do
    it("begins empty") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a new term to the dictionary") do
      test_term = Word.new("spider")
      test_term.save()
      expect(Word.all()).to(eq([test_term]))
    end
  end





end