class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end

  def create
    # params[:menu] = Integer(Post.new(params[:menu]))
    @post = Post.new(posts_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(posts_params)
      redirect_to root_path
    else
      render "edit"
    end
  end

  private
    def posts_params
      params.require(:post).permit(:title, :link_url, :menu_id, :content)
    end
end
