
class UsersController < ApplicationController

# before_action :set_user, only: [:show, :edit, :update, :destroy]
# skip_before_action :authorize, only: [:new, :create, :index]

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

   logger.debug @user.inspect
   @mothers = User.mothers
   @comment = Comment.new

   @my_comments = Comment.where(mother_id: @user.id, trimester_id: @user.trimester)
   @doctor = User.where(mother: false)
   # @my_comments = []
 end

def create
  @user = User.new(user_params)

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
  # logger.debug "PARAMS: #{params}"
  @user = User.find(params[:id])

   # For doctor
   if current_user.mother == false
     @comment = Comment.new(doctor_id: params[:id], commenter_id: params[:id], mother_id: @user.id,
       comment: params[:comment]['comment'])
     @comment.save
     redirect_to user_url(@user), notice: "Doctor comment sent."
     return
   end

  # Saving reply comments.
  if params[:comment] != nil && params[:comment]['comment'] != nil && params[:comment]['comment'].length > 0 && params[:comment]['trimester_id'] != nil
    @comment = Comment.new(id: nil, mother_id: params[:id], commenter_id: params[:id],
      comment: params[:comment]['comment'], trimester_id: params[:comment]['trimester_id'], doctor_id: nil)
    @comment.save
    redirect_to user_url(@user),
    notice: "Your comment sent."
    return
  end

  if params[:user][:trimester] != nil && @user.trimester != params[:user][:trimester] && @user.update(user_params)
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
          # logger.debug "****USER:" + @user
          redirect_to user_url(@user), notice: "Error: Please answer all questions."
          return
      else
          @user.update(user_params)
          redirect_to user_url(current_user),
          notice: "Your answers successfully logged."
          return
      end

  end


  # need following method to connnect with above update method.

  # if params[:user] != nil &&
  #     (params[:user]['tri_1_1'] != nil || params[:user]['tri_2_1'] != nil || params[:user]['tri_3_1'] != nil) &&
  #
      # if params[:user]['trimester_id'] != nil
        # @comment = Comment.new(id: nil, mother_id: params[:id], commenter_id: params[:id],
        #   comment: params[:user]['comment'], trimester_id: params[:user]['trimester_id'], doctor_id: nil)
        # @comment.save

      #   redirect_to user_url(@user),
      #   notice: "Error updating."
      #   return
       #
      #  else
        #  redirect_to user_url(current_user),
        #  notice: "Your answers successfully logged."
        #  return
      # end





  # end
end

def mom_history
  @user = User.find(params[:id])
  @comments = Comment.where(mother_id: params[:id])

end

private

def user_params
  params.require(:user).permit(:first_name, :last_name, :email, :password,
  :password_confirmation, :phone, :address, :dob, :children, :trimester,
  :tri_1_1, :tri_1_2, :tri_1_3, :tri_2_1, :tri_2_2, :tri_2_3,
  :tri_3_1, :tri_3_2, :tri_3_3, :doc_qual, :regis_number)
end
end
