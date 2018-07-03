require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rectangle path', {:type => :feature}) do
  it('processes the user entry and returns whether it is a triangle or not') do
    visit('/')
    fill_in('side_one', :with => '6')
    fill_in('side_two', :with => '6')
    fill_in('side_three', :with => '6')
    click_button('Triangle?')
    expect(page).to have_content('Equilateral Triangle Dummy')
  end
  it('processes the user entry and returns whether it is a triangle or not') do
    visit('/')
    fill_in('side_one', :with => '2')
    fill_in('side_two', :with => '2')
    fill_in('side_three', :with => '6')
    click_button('Triangle?')
    expect(page).to have_content('Not a Triangle dummy')
  end
  it('processes the user entry and returns whether it is a triangle or not') do
    visit('/')
    fill_in('side_one', :with => '2')
    fill_in('side_two', :with => '2')
    fill_in('side_three', :with => '3')
    click_button('Triangle?')
    expect(page).to have_content('Isosceles Triangle Dummy')
  end
  it('processes the user entry and returns whether it is a triangle or not') do
    visit('/')
    fill_in('side_one', :with => '8')
    fill_in('side_two', :with => '9')
    fill_in('side_three', :with => '6')
    click_button('Triangle?')
    expect(page).to have_content('Scalene Triangle Dummy')
  end
end
