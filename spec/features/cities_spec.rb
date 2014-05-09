require 'spec_helper'

feature 'CRUD favorites cities' do
  scenario 'create a list of cities' do
    visit ('/')
    fill_in "city", with: "Chicago"
    fill_in "state", with: "IL"
    click_on 'Submit'
    expect(page).to have_content "Chicago, IL"
  end

  scenario 'update a list of cities' do
    visit ('/')
    fill_in "city", with: "Chicago"
    fill_in "state", with: "IL"
    click_on 'Submit'
    click_on "Chicago"
    fill_in "city", with: "San Francisco"
    fill_in "state", with: "CA"
    click_on "Update"
    expect(page).to have_content "San Francisco"

  end
end