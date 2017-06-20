class Todo < ApplicationRecord
  scope :owned, -> (email) { where(email: email)}

  def completed?
    completed_at?
  end

  def complete!
    touch :completed_at
  end

  def mark_incomplete!
    update(completed_at: nil)
  end
end
