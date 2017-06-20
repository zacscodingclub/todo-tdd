class CompletionsController < ApplicationController
  def create
    todo

    redirect_to root_path
  end

  private

  def todo
    current_user.todos.find(params[:todo_id]).touch :completed_at
  end
end
