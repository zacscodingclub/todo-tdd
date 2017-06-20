require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create!(title: "Buy milk", email: "someone@example.com")

    sign_in_as "test@example.com"

    expect(page).not_to display_todo(".todos li", "Buy milk")
  end
end
