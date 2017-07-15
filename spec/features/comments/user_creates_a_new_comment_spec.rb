require 'rails_helper'

describe "User creates a new comment" do
  scenario "a user adds a comment to a job" do
    company = create(:company, :with_jobs, job_count: 1)
    job = company.jobs.last
    visit company_job_path(company, job)

    fill_in "comment[content]", with: "This job suckssssss. Abba Zabba, you my only friend."

    click_button "Add Comment"

    expect(current_path).to eq("/companies/#{company.id}/jobs/#{job.id}")
    expect(page).to have_content("This job suckssssss. Abba Zabba, you my only friend.")
  end
end
