class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id]) 
    @comment = Comment.new
  end

  def new
    @picture = Picture.new
  end

  def edit
    @picture = Picture.find(params[:id])
   
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update(picture_params)
    redirect_to picture_path(@picture)
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.save
    redirect_to user_path(@picture.user_id)
  end

  def destroy
    @picture = Picture.find(params[:id]).destroy
    redirect_to user_path(@picture.user_id)
  end
  private
  def picture_params
    params.require(:picture).permit(:image_url, :title, :user_id, tag_attributes:[], tag_ids:[], tags_attributes: [:name], comments_attributes: [:content])
  end
end