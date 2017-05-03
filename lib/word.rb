class Word
  @@words = []
  attr_accessor(:word, :definitions, :id)

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @definitions = []
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

  def add_definition (definition)
    @definitions.push(definition)
  end

  def Word.find (identification)
    found_word = nil
    @@words.each do |word|
      if word.id == identification
        found_word = word
      end
    end
    found_word
  end
end



#
# def add_definition (definition)
#   @definitions.push(definition)
# end
