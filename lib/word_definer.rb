class Word
  attr_accessor(:word)
  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes[:word]
  end
end
