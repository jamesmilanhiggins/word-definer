
require "word"
require "definition"
require "rspec"
require "pry"

describe(Word) do
  before() do
    Word.clear
  end

  it ("returns the word") do
    test_word = Word.new({:word => "test"})
    expect(test_word.word).to(eq("test"))
  end

  it ("returns the first id") do
    test_word = Word.new({:word => "test"})
    expect(test_word.word).to(eq("test"))
    expect(test_word.id).to(eq(1))
  end

  describe(".all") do
    it("the array of all saved words") do
      test_word = Word.new({:word => "test"})
      expect(Word.all).to(eq([]))
  end
  end

  describe("#save") do
    it("saves the word into words array") do
      test_word = Word.new({:word => "test"})
      test_word.save
      expect(Word.all).to(eq([test_word]))
  end
  end

  describe(".clear") do
    it("saves the word into words array") do
      test_word = Word.new({:word => "test"})
      test_word.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

end
