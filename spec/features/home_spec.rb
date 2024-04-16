# frozen_string_literal: true

RSpec.feature "Home" do
  scenario "visiting home page shows page_title" do
    visit "/"

    expect(page).to have_content "Adam & Stephanie's Cookbook"
  end
end
