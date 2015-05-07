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

# describe('multiple definitions', {:type => :feature}) do
#   it('allows a user to click a list to see the tasks and details for it') do
#     visit('/')
#     click_link('Add New List')
#     fill_in('name', :with =>'Epicodus Work')
#     click_button('Add List')
#     expect(page).to have_content('Success!')
#   end
# end

describe('Add a definition path', {:type => :feature}) do
  it('will save a word for later defining') do
    visit('/word/definitions')
    fill_in('definition', :with => "Spooky")
    click_button("Add Definition")
    expect(page).to have_content("Spooky")
  end
end
