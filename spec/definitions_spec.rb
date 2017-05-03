require('rspec')
require('word')
require('definition')

describe(Definition) do
  describe(".all") do
    it("shows the array of all saved definitions ") do
      test_definition = Definition.new({:definition => "test inputted text"})
      expect(Definition.all).to(eq([]))
    end
  end
  describe("#save") do
    it("saves the definition into an array") do
      test_definition = Definition.new({:definition => "test inputted text"})
      test_definition.save
      expect(Definition.all).to(eq([test_definition]))
    end
  end
  describe(".clear") do
    it("clears the definition array") do
      test_definition = Definition.new({:definition => "test inputted text"})
      test_definition.save
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end
end
