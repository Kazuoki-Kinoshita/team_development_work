class BlogsController < ApplicationController

  def show
    @blog = Blog.find(params[:id])
  end

  def destory
    @blog = Blog.find(params[:id])
    @blog.destory
    redirect_to blogs_path, notice:"削除しました"
  end
end
