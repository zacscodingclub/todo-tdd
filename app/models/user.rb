class User < ApplicationRecord
  attr_reader :todos

  def todos
    Todo.owned(email)
  end

  def signed_in?
    email.present?
  end
end
