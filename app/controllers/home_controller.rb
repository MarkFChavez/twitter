class HomeController < ApplicationController

  before_filter :authenticate_user!
  layout "user"

  def index
	  @micropost = Micropost.new
	  @microposts = Micropost.all
  end

  def show
  end
end
