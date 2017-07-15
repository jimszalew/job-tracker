require 'rails_helper'

describe "User sees one category" do
  scenario "and sees all jobs in that category" do
    category = create(:category, :with_jobs, job_count: 3)
    jobs = category.jobs

    visit category_path(category)

    expect(current_path).to eq("/categories/#{category.id}")
    expect(page).to have_content(category.title)
    expect(page).to have_content(jobs.first.title)
    expect(page).to have_content(jobs.second.title)
    expect(page).to have_content(jobs.last.title)
  end
end
