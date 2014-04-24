require 'spec_helper'

feature 'manage types of dogs' do

  scenario 'can create dogs' do
    visit '/'
    expect(page).to have_content 'Welcome!'
    click_link 'Dogs'
    click_link 'Create Dog'
    fill_in 'name', :with => 'Skip'
    fill_in 'breed', :with => 'Yellow Lab'
    click_button 'Create Dog'
    expect(page).to have_content 'Skip'
    expect(page).to have_content 'Yellow Lab'
  end

end