require 'rails_helper'

describe "User is on the companies index page" do
  scenario "and follows link to create a new company" do
    visit companies_path

    click_link "New Company"

    expect(current_path).to eq("/companies/new")
  end
end
