class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def posts_params
      params.require(:post).permit(:title, :link_url, :category_id, :content)
    end
end
