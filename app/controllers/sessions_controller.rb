class SessionsController < ApplicationController

  # skip_before_action :authorize
  def new
  end

  def create

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
