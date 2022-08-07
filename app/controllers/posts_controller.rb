class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
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
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id)

    else
      render :edit
    end

  end
  def destroy
    if @post.destroy
       redirect_to root_path
    end
  end


  def genre
  
    @posts = Post.where(genre_id: params[:id]).order('created_at DESC')
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :genre_id).merge(user_id: current_user.id)
  end

  def move_to_index
    post = Post.find(params[:id])
    redirect_to root_path unless user_signed_in? && current_user.id == post.user_id
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
