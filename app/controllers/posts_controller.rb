class PostsController < ApplicationController
  def new
    @psot = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :price, :genre_id).merge(user_id: current_user.id)
  end
end
