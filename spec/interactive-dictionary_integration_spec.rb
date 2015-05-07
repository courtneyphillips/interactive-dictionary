require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Add a word path', {:type => :feature}) do
  it('will present a list of words, allow user to input word') do
    visit('/')
    fill_in('term', :with => "Spiders")
    click_button("Add Word")
    expect(page).to have_content("Your word has been successfully added!")
  end
end
