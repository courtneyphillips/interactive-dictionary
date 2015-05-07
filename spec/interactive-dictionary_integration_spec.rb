require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Add a word path', {:type => :feature}) do
  it('will present a list of words, allow user to input word') do
    visit('/')
    fill_in('word', :with => "Spiders")
    click_button("Add Word")
    expect(page).to have_content("Spiders")
  end
end

describe('Add a definition path', {:type => :feature}) do
  it('will present a list of definitions for a given word') do
    visit('/word/:id')
    fill_in('new_definition', :with => "Spooky")
    click_button("Add Definition")
    expect(page).to have_content("Spooky")
  end
end
