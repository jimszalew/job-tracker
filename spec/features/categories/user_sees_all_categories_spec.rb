require 'rails_helper'

describe "User sees all companies" do
  scenario "a user sees all the categories" do
    create_list(:category, 3)

    visit categories_path

    expect(page).to have_content("Web Development")
  end
end
