class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    redirect_to new_session_path if !signed_in?
  end

  def signed_in?
    session[:current_email].present?
  end
end
