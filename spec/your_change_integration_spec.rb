require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the results path', {:type => :feature}) do
  it('processes the change given and returns coins') do
    visit('/')
    fill_in('change_input', :with => '99')
    click_button('Send')
    expect(page).to have_content('3 quarters, 2 dimes and 4 pennies')
  end
end
