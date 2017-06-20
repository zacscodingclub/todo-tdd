class Todo < ApplicationRecord
  scope :owned, -> (email) { where(email: email)}

  def completed?
    completed_at?
  end
end
