class TagsController < ApplicationController
  def index
    @tags = Tag.all.order(:name)
  end
  def show
    @tag = Tag.find(params[:id])
  end
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    ArticleTag.where(tag_id: params[:id]).destroy_all

    flash.notice = "Tag '#{@tag.name}' Deleted"

    redirect_to tags_path
  end
end