require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    create_todo "Example Todo"
    click_on "Complete"

    expect(page).to display_todo(".todos li.completed", "Example Todo")
  end
end
