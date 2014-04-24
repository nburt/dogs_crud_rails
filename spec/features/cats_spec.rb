require 'spec_helper'

feature 'it manages cats' do

  before do
    visit '/'
    click_link 'Cats'
    click_link 'Create Cat'
  end

  scenario 'can create cats' do
    fill_in 'cat[name]', :with => 'Mr. Kitty'
    fill_in 'cat[color]', :with => 'Black'
    click_button 'Create Kitty'
    expect(page).to have_content 'Mr. Kitty'
    expect(page).to have_content 'Black'
  end

  scenario 'returns error if don\'t fill in fields' do
    click_button 'Create Kitty'
    expect(page).to have_content 'Name can\'t be blank'
    expect(page).to have_content 'Color can\'t be blank'
  end

  scenario 'can update cats' do
    fill_in 'cat[name]', :with => 'Mr. Kitty'
    fill_in 'cat[color]', :with => 'Black'
    click_button 'Create Kitty'

    click_link 'Mr. Kitty'
    expect(page).to have_content 'Mr. Kitty'
    expect(page).to have_content 'Black'
    click_link 'Edit Mr. Kitty'

    fill_in 'cat[name]', :with => 'Mrs. Kitty'
    fill_in 'cat[color]', :with => 'White'
    click_button 'Edit Kitty'
    expect(page).to have_content 'Mrs. Kitty'
    expect(page).to have_content 'White'
  end

  scenario 'can delete cats' do
    fill_in 'cat[name]', :with => 'Mr. Kitty'
    fill_in 'cat[color]', :with => 'Black'
    click_button 'Create Kitty'

    click_link 'Mr. Kitty'
    click_link 'Delete Mr. Kitty'
    expect(page).to_not have_content 'Mr. Kitty'
  end
end