require 'rails_helper'

describe "User sees a specific job" do
  scenario "a user sees a job for a specific company" do
    company = create(:company, :with_jobs, job_count: 3)
    job = company.jobs.first

    visit company_job_path(company, job)

    expect(page).to have_content(company.name)
    expect(page).to have_content(job.title)
    expect(page).to have_content(job.level_of_interest)
  end
end
