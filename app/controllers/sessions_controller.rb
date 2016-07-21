class SessionsController < ApplicationController

  # skip_before_action :authorize
  def new
  end

  def create
    # Smita's code : to be deleted or incorporated later July 19, 2016
    #user = User.find_by(name: params[:name])
  #   if user and user.authenticate(params[:password])
  #     sessions[:user_id] = user.id
  #     redirect_to doc_admin_url
  #
  #   else
  #     redirect_to login_url, alert:"Invalid Username or Password"
  # end
  #
  # def destroy
  #   session[:user_id] = nil
  #   redirect_to login_url, alert:"Successfully logged out"

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_url(current_user), notice: "You are now signed in!"
    else
      redirect_to new_session_path, alert: "Something went wrong. Please try again."
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You are now signed out."
  end
end
