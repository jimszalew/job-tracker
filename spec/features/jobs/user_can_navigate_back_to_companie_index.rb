require 'rails_helper'

describe "User is viewing company jobs index" do
  scenario "and navigate back to all companies" do
    company = create(:company, :with_jobs, job_count: 3)

    visit company_path(company)

    click_link("<< Back to all companies")

    expect(current_path).to eq("/companies") 
  end
end
