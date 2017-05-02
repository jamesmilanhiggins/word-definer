class Word
  attr_accessor(:word, :id)
  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes[:word]
    @id = @@words.length + 1
  end
end
