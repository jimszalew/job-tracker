require 'rails_helper'

describe "User edits an existing job" do
  scenario "a user can edit a job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Assistant", description: "self explanatory", level_of_interest: 10, city: "Omaha" )
    visit edit_company_job_path(company, job)

    fill_in "job[title]", with: "Manager"
    fill_in "job[description]", with: "Babysitting"
    fill_in "job[level_of_interest]", with: 25
    fill_in "job[city]", with: job.city
    click_button "Update"

    expect(current_path).to eq("/companies/#{company.id}/jobs/#{job.id}")
    expect(page).to have_content("Manager")
    expect(page).to_not have_content("Assistant")
  end
end
