class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to blogs_path
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
