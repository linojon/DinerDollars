class ApplicationController < ActionController::Base
  #include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_current_user
      User.current = current_user
  end
end
