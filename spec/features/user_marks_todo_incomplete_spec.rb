require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo "Example Todo"
    click_on "Complete"
    click_on "Incomplete"

    expect(page).not_to display_todo(".todos li.completed", "Example Todo")
    expect(page).to display_todo(".todos li", "Example Todo")
  end
end
