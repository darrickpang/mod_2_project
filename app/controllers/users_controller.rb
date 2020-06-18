class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)   
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(username: params[:user][:username])
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to new_user_path, success: "#{@user.username} was deleted."
  end

  def show
    @user = User.find(params[:id])
    @picture = Picture.new    
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password, pictures_attributes:[:image_url, :title, tag_ids:[], tags_attributes: [:name], comments_attributes: [:content]])
    end
end