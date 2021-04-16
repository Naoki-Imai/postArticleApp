class ApplicationController < ActionController::Base
  helper_method :nav
  before_action :nav

  private
    def nav
      @menus = Menu.all
    end
end
