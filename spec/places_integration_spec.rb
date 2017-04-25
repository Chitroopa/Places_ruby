require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the path to the result erb", {:type => :feature}) do
  it('will detect the presence of our result page') do
    visit('/')
    fill_in('places', :with => "Seattle")
    fill_in('time', :with => "01/01/2014")
    click_button('View')
    expect(page).to have_content({"Seattle"=>"01/01/2014"})
  end
end
