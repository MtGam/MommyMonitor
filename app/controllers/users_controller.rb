
class UsersController < ApplicationController

 def index
   @users = User.all
   @comment = Comment.new
 end

 def new
   @user = User.new
 end

 def show
   current_user
   @user = User.find(params[:id])

   @mothers = User.mothers
   @comment = Comment.new

   @my_comments = Comment.where(mother_id: @user.id, trimester_id: @user.trimester)
   @doctor = User.find_by(mother: false)     #this work because we only have one doctor.
 end

def create
  @user = User.new(user_params)
  @user.mother = true

  if @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user.id), notice: "Sucessfully signed up!"
  else
    render :new, notice: "Please try again."
  end
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])

  if params[:user] != nil && params[:user][:trimester] != nil && @user.trimester != params[:user][:trimester] && @user.update(user_params)
    redirect_to user_url(@user),
    notice: "Your trimester stage has been updated."
    return
  end

  # Check if fields are not empty when mother is answering trimester questions.
  if params[:user] != nil && current_user.trimester != nil
      if (@user.trimester == 1 && (params[:user]['tri_1_1'] == nil ||
            params[:user]['tri_1_2'] == nil || params[:user]['tri_1_3'] == nil)) ||
            (@user.trimester == 2 && (params[:user]['tri_2_1'] == nil ||
            params[:user]['tri_2_2'] == nil || params[:user]['tri_2_3'] == nil)) ||
            (@user.trimester == 3 && (params[:user]['tri_3_1'] == nil ||
            params[:user]['tri_3_2'] == nil || params[:user]['tri_3_3'] == nil))
          redirect_to user_url(@user), notice: "Error: Please answer all of the questions."
          return
      else
          @user.update(user_params)
          redirect_to user_url(current_user),
          notice: "Your answers successfully logged."
          return
      end
  else
    redirect_to user_url(@user), notice: "Error Updating."
    return
  end

end

  def mom_history
    @user = User.find(params[:id])
    @comments = Comment.where(mother_id: params[:id])
    @doctor = User.find_by(mother: false)     #this work because we only have one doctor.

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password,
    :password_confirmation, :phone, :address, :dob, :children, :trimester,
    :tri_1_1, :tri_1_2, :tri_1_3, :tri_2_1, :tri_2_2, :tri_2_3,
    :tri_3_1, :tri_3_2, :tri_3_3, :doc_qual, :regis_number)
  end
end
