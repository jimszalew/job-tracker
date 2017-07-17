require 'rails_helper'

describe "User creates a new contact" do
  scenario "a user adds a contact to a company" do
    company = create(:company)
    visit company_path(company)

    fill_in "contact[name]", with: "Joe Schmoe"
    fill_in "contact[position]", with: "Director of HR"
    fill_in "contact[email]", with: "joeschmoe@place.com"

    click_button "Add Contact"

    expect(current_path).to eq("/companies/#{company.id}/jobs")
    expect(page).to have_content("Joe Schmoe")
    expect(page).to have_content("Director of HR")
    expect(page).to have_content("joeschmoe@place.com")
  end
end
