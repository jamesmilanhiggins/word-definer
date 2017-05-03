# class Definition
#   @@all_definitions = []
#   attr_accessor(:define, :id)
#
#   def initalize(attributes)
#     @define = attributes[:definition]
#     @id = @@all_definitions.length + 1
#   end
#
#   def Definition.all
#     @@all_definitions
#   end
#
#   def save
#     @@all_definitions.push(@define)
#   end
# end


class Definition
  @@definitions = []

  attr_accessor :definition

  def initialize (definition)
    @definition = definition
  end

  def Definition.all
    @@definitions
  end

  def save
    @@definitions.push(self)
  end

  def Definition.clear
    @@definitions = []
  end

end
