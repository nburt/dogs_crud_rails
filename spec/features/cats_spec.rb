require 'spec_helper'

feature 'it manages cats' do

  scenario 'can create cats' do
    visit '/'
    click_link 'Cats'
    click_link 'Create Cat'
    fill_in 'cat[name]', :with => 'Mr. Kitty'
    fill_in 'cat[color]', :with => 'Black'
    click_button 'Create Cat'
    expect(page).to have_content 'Mr. Kitty'
    expect(page).to have_content 'Black'
  end

  scenario 'returns error if don\'t fill in fields' do
    visit '/'
    click_link 'Cats'
    click_link 'Create Cat'
    click_button 'Create Cat'
    expect(page).to have_content 'Name can\'t be blank'
    expect(page).to have_content 'Color can\'t be blank'
  end

end