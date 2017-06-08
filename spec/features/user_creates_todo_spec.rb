require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Add Todo"
    fill_in "New Todo", with: "Example Todo"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: "Example Todo"
  end
end