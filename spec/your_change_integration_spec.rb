require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the results path', {:type => :feature}) do
  it('processes the change given and returns coins') do
    visit('/')
    fill_in('change_input', :with => '99')
    click_button('Send')
    expect(page).to have_content('Sorry! We are out of quarters, dimes and nickels. Your change is: 2 quarters, 2 dimes, 4 nickels and 9 pennies')
  end
end
