
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
