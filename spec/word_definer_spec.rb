
require "word_definer"
require "definition"
require "rspec"
require "pry"

describe("#word") do
  it ("returns the word") do
    test_word = Word.new({:word => "test"})
    expect(test_word.word).to(eq("test"))
  end
  it ("returns the first id") do
    test_word = Word.new({:word => "test"})
    expect(test_word.word).to(eq("test"))
    expect(test_word.id).to(eq(1))
  end
end
