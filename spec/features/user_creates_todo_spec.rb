require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo "Example Todo"

    expect(page).to display_todo(".todos li", "Example Todo")
  end
end
