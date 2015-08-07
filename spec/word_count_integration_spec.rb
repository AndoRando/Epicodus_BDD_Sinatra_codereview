require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The word search path', {:type => :feature}) do
  it('Checks that the method returns the search results (number of instances of search word) to the results page') do
    visit('/')
    fill_in('sentence', :with => 'What would a woodchuck! chuck if a woodchuck. could chuck wood?')
    fill_in('word', :with => 'woodchuck')
    click_button('Search')
    expect(page).to have_content(2)
  end
end
