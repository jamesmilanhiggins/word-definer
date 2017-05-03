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

# describe("#initialize") do
#   it("returns the definition") do
#     test_definition = Definition.new("test definition")
#     expect(test_definition.definition).to(eq("test definition"))
#   end
# end


#
# describe(Definition) do
#   describe("#definition") do
#     it ("returns the definition that is inputted for the word") do
#       test_word = Word.new({:word => "test"})
#       test_definition = Definition.new({:definition => "test inputted text"})
#       expect(test_definition.define).to(eq("test inputted text"))
#     end
#   end
# end
