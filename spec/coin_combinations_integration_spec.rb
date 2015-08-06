require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the coin combination path', {:type => :feature}) do
  it('processes the the amount the user inputs and return change in coin form') do
    visit('/')
    fill_in('coinz', :with => '91')
    click_button('Send')
    expect(page).to have_content('3 quarters 1 dimes 1 nickles 1 pennies')
  end
end
