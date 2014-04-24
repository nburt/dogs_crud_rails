require 'spec_helper'

feature 'manage types of dogs' do

  before do
    visit '/'
    expect(page).to have_content 'Welcome!'
    click_link 'Dogs'
    click_link 'Create Dog'
    fill_in 'name', :with => 'Skip'
    fill_in 'breed', :with => 'Yellow Lab'
    click_button 'Create Dog'
  end

  scenario 'can create dogs' do
    expect(page).to have_content 'Skip'
    expect(page).to have_content 'Yellow Lab'
  end

  scenario 'can edit dogs' do
    click_link 'Skip'
    click_link 'Edit Skip'
    fill_in 'name', :with => 'Skippy'
    fill_in 'breed', :with => 'Husky'
    click_button 'Edit Dog'
    expect(page).to have_content 'Skippy'
    expect(page).to have_content 'Husky'
  end

end