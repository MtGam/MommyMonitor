class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authorize
  protected
  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice:"You are trying to access without permission"
    end
  end


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
