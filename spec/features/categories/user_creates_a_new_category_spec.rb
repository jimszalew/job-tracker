require 'rails_helper'

describe "User creates a new category" do
  scenario "a user creates a new category" do
    job = create(:job)
    visit new_company_job_path(job)

    fill_in "category[title]", with: "Web Development"

    click_button "Create Category"

    expect(current_path).to eq("/categories/#{Category.last.id}")
    expect(page).to have_content("Web Development")
  end
end
