class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    redirect_to new_session_path if !signed_in?
  end

  def signed_in?
    current_user.signed_in?
  end

  def current_email
    session[:current_email]
  end

  def current_user
    User.new(email: current_email)
  end

  def sign_in_as(email)
    @user = User.find_by_email(email)
    if !@user
      @user = User.create(email: email)
    end
    session[:current_email] = @user.email
  end
end
