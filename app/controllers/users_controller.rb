class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC")
    @records = @user.records.order("created_at DESC")
 
  end

end
