class TagsController < ApplicationController
  #before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)
  end

  private
    # Only allow a list of trusted parameters through.
    def tag_params
      params.fetch(:tag, {})
    end
end
