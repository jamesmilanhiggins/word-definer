require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)



describe("the index page path", {:type => :feature}) do
  it("processes the user input and returns correct message if its a palindrome") do
    visit("/")
    expect(page).to have_content("Dictionary")
  end
end
