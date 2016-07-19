class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      self.current_user = user
      redirect_to user_url(current_user), notice: "Hello, #{user.first_name}!"
    else
      redirect_to new_session_path, alert: "Something went wrong. Please try again."
  end

  def destroy
    self.current_user = nil
    redirect_to root_path, notice: "You are now signed out."
  end
end
