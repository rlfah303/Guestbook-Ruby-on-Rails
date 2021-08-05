class CommentsController < ApplicationController
  before_action :authenticate
  before_action :load_guestbook
  before_action :load_comment, except: [:index, :new, :create]
  
  #getting all comments /guestbooks/guestbook_id/comments
  def index
    @comments = @guestbook.comments
  end
  
  #new comment /guestbooks/guestbook_id/comments/new
  def new
    @comment =Comment.new
  end
  
  #creating a new comment
  def create
    @comment = Comment.new comment_params
    if @guestbook.comments << @comment
      redirect_to guestbook_comments_path(@guestbook), notice: "Comment created"
    else
      render :new
    end
  end
  
  #show one comment  /guestbooks/guestbook_id/comments/comment_id
  def show
  end 
  
  #editting a comment /guestbooks/guestbook_id/comments/comment_id/edit
  def edit
  end
  
  #updating a comment
  def update
    if @comment.update comment_params
      redirect_to [@guestbook,@comment], notice: "updated"
    else
      render :edit
    end
  end
  
  #delete a comment
  def destroy
    @comment.destroy
    redirect_to guestbook_comments_path(@guestbook)
  end
  
  private
  
  def load_guestbook
    @guestbook = current_user.guestbooks.find params[:guestbook_id] 
  end  
  
  def load_comment
    @comment = @guestbook.comments.find params[:id]
  end
  
  def comment_params
    params.require(:comment).permit(:name,:body)
  end
end
