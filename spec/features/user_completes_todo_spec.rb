require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    click_on "Add Todo"
    fill_in "New Todo", with: "Example Todo"
    click_on "Submit"

    click_on "Complete"

    expect(page).to have_css '.todos li.completed', text: "Example Todo"
  end
end
