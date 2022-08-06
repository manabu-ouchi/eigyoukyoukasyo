class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def genre
  
    @posts = Post.where(genre_id: params[:id]).order('created_at DESC')
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :genre_id).merge(user_id: current_user.id)
  end
end
