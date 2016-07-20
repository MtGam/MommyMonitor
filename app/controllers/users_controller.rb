class UsersController < ApplicationController

  # before_action :set_user, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authorize, only: [:new, :create, :index]


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    current_user
    @user = User.find(params[:id])
  end

  def create
    @user = User.new

    if @user.save
      redirect_to user_path(@user), notice: "Sucessfully signed up!"
    else
      render :new, notice: "Please try again."
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      format.html {redirect_to user_url, notice: "User was successfully updated." }

    else
      format.html { render:edit }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
