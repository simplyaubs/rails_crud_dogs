require 'spec_helper'

feature 'CRUD favorite Dogs' do
  scenario 'user can see Welcome on home page' do
    visit '/'
    expect(page).to have_content 'Favorite Dogs'
  end

  scenario 'user can create a list of dogs' do
    visit '/'
    fill_in 'name', with: 'Fido'
    fill_in 'breed', with: 'Poodle'
    click_on 'Submit'
    expect(page).to have_content 'Fido'
    expect(page).to have_content 'Poodle'
  end
end