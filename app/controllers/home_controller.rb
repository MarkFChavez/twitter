class HomeController < ApplicationController

  before_filter :authenticate_user!
  layout "user"

  def index
	  @micropost = Micropost.new
	  @microposts = Micropost.page(params[:page]).per_page(10)
  end

  def show
  end
end
