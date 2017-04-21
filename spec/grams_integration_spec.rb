require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('grams', {:type => :feature}) do
  it('returns information about the user\'s input') do
    visit('/')
    fill_in('obj', :with => 'stick')
    fill_in('arg', :with => 'ticks')
    click_button('Send')
    expect(page).to have_content('anagrams')
  end
end
