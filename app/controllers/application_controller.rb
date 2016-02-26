class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

    helper_method :current_user, :is_admin

    def current_user
      # reset_session
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def authorize
      redirect_to login_path, alert: 'You must be logged in' if current_user.nil?
    end

    def is_admin
      current_user && current_user.admin?
    end
end
