class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, notice: "Please sign in to the application first"
    end
  end
end
