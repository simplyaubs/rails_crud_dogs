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

  scenario 'user can update a dog' do
    visit '/'
    fill_in 'name', with: 'Fido'
    fill_in 'breed', with: 'Poodle'
    click_on 'Submit'
    expect(page).to have_content 'Fido'
    expect(page).to have_content 'Poodle'
    click_on 'Fido'
    click_on 'Edit'
    fill_in 'name', with: 'Trixie'
    fill_in 'breed', with: 'Lab'
    click_on 'Update'
    expect(page).to have_content 'Trixie'
    expect(page).to have_content 'Lab'
    expect(page).to_not have_content 'Fido'
    expect(page).to_not have_content 'Poodle'
  end


end
