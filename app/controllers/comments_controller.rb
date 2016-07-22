class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user

     if @comment.save
       redirect_to user_comments_path(@user), :flash => { :success => "Message" }
     else
       render :index, :flash => { :fail => "failed!" }
     end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(:response)
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:response, :mother_id)
  end

end
