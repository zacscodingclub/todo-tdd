require "rails_helper"

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path

    expect(page).to display_todo("h1", "Todos")
  end
end
