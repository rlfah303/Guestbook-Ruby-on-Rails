class GuestbooksController < ApplicationController
  before_action :authenticate
  before_action :load_guestbook, except: [:index, :new, :create]
  
  # getting all guestbooks
  def index
      #@guestbooks =current_user.guestbooks
      @guestbooks =Guestbook.paginate(:page => params[:page ] , per_page: 2)
  end
  
  # creating a guestbook
  def new
    @guestbook = Guestbook.new
  end
  
  # creating a new form
  def create
    @guestbook =Guestbook.new guestbook_params
    @guestbook.user =current_user
    if @guestbook.save
      redirect_to guestbooks_path, notice: "Guestbook Created"
    else
      render :new
    end
  end
  
  # getting a guestbook
  def show
  end
  
  # editting a guestbook
  def edit

  end
  
  # updating a guestbook
  def update
    @guestbook.user =current_user
    if @guestbook.update guestbook_params
      redirect_to @guestbook, notice: "Updated"
    else
      render :edit
    end
  end
    
  # deleting a guestbook
  def destroy
    @guestbook.destroy
    redirect_to guestbooks_path, alert: "Deleted"
  end
  
  #private methods
  private
  
  #getting data
  def load_guestbook
    @guestbook =current_user.guestbooks.find params[:id] 
  end
  
  #helper method
  def guestbook_params
    params.require(:guestbook).permit(:title,:content,:date,:image)
  end
  
end
