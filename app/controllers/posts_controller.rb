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
      flash[:error] = 
      render 'new'
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  private
    def posts_params
      params.require(:post).permit(:title, :link_url, :menu_id, :content)
    end
end
