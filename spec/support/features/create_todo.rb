module Features
  def create_todo(title)
    click_on "Add Todo"
    fill_in "New Todo", with: title
    click_on "Submit"
  end
end
