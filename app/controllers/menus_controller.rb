class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end
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
      flash[:notice] = "カテゴリーを作成しました"
      redirect_to root_path
    else
      flash.now[:alert] = "エラーが発生しました"
      render "new"
    end
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      flash[:notice] = "カテゴリーを更新しました"
      redirect_to root_path
    else
      flash.now[:alert] = "エラーが発生しました"
      render "edit"
    end  
  end

  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
    flash[:notice] = "削除しました"
    redirect_to root_path
  end

  private
    def menu_params
      params.require(:menu).permit(:word, :image)
    end
end
