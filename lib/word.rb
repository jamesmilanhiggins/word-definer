class Word
  attr_accessor(:word, :id)
  @@words = []

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @id = @@words.length + 1
  end

  def Word.all
    @@words
  end

  def save
    @@words.push(self)
  end

  def Word.clear
    @@words = []
  end
end
