class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authorize
  protect_from_forgery with: :exception

  private

    def authorize
      unless flash[:login_name] = User.find_by_id(session[:user_id])
        redirect_to root_url, :notice => "Please log in"
      end
    end
end
