class CommentsController < ApplicationController
  def index
    @menu_item = MenuItem.find(params[:menu_item_id])
    @comments = @menu_item.comments
  end

  def create
    @menu_item = MenuItem.find(params[:menu_item_id])
    @comment = @menu_item.comments.build(comment_params)

    if @comment.save
      redirect_to "/menu_items/#{@menu_item.id}",
      notice: 'Your comment was created successfully.'
    else
      flash[:notice] = "There was an issue with your comment. Please try again."
      render 'menu_items/show'
   
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end