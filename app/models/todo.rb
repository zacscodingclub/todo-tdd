class Todo < ApplicationRecord
  scope :owned, -> (email) { where(email: email)}
end
