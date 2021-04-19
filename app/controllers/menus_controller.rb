class MenusController < ApplicationController
  def show
    @menu = Menu.find(params[:id])
    menu = @menu[:id]
    @posts = Post.where(menu_id: menu)
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to root_path
    else
      render "edit"
    end  
  end

  private
    def menu_params
      params.require(:menu).permit(:word, :image)
    end
end
