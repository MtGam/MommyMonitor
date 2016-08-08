class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
    @comment.commenter_id = current_user.id

  end

  def create
    @user = User.find(params[:user_id])
    @comment = Comment.new(comment_params)
    @comment.commenter_id = current_user.id

    @comment.mother_id = @user.id
    if current_user.mother == false
       @comment.doctor_id = current_user.id
    end

       @comment.trimester_id = @user.trimester

    if @comment.save
       redirect_to user_path(@user), :flash => { :success => "Message" }
     else
       redirect_to user_path(@user), :flash => { :fail => "failed!" }
     end

  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
      # For doctor
      if current_user.mother == false
        @comment = Comment.new(doctor_id: params[:id], commenter_id: params[:id], mother_id: @user.id,
          comment: params[:comment]['comment'])
        @comment.save
        redirect_to user_url(current_user), notice: "Doctor comment sent."
        return
      end
  end



  private

  def comment_params
    params.require(:comment).permit(:mother_id, :doctor_id, :commenter_id, :comment)
  end

end
