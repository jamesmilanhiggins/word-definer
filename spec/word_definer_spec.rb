
require "definition"
require "rspec"
require "pry"

describe("#word") do
  it ("returns the word") do
    test_word = Word.new({:word => "test"})
    expect(test_word.word).to(eq("test"))
  end
end
