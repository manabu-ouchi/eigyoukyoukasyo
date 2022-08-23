class CommentsController < ApplicationController
  def create
     
    @comment = Comment.create(comment_params)
    
    if @comment.save
      redirect_to post_path(@comment.post)
    else
      @post = @comment.post
      @comments = @post.comments
      render "psots/show"

    end
    

  end

  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id,  post_id: params[:post_id])
  end
  
end
