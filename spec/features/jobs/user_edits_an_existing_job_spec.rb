require 'rails_helper'

describe "User edits an existing job" do
  scenario "a user can edit a job" do
    company = create(:company, :with_jobs, job_count: 1)
    job = company.jobs.first
    category = create(:category)
    visit edit_company_job_path(company, job)

    fill_in "job[title]", with: "Manager"
    fill_in "job[description]", with: "Babysitting"
    fill_in "job[level_of_interest]", with: 25
    fill_in "job[city]", with: job.city
    select category.title, from: "job[category_id]"
    click_button "Update"

    expect(current_path).to eq("/companies/#{company.id}/jobs/#{job.id}")
    expect(page).to have_content("Manager")
    expect(page).to_not have_content(job.title)
  end
end
