class MicropostsController < ApplicationController
  def show
  end

  def create
	  @micropost = current_user.microposts.build(params[:micropost])

	  if @micropost.save
		redirect_to home_index_path, notice: "nice tweet!"
	  else
		redirect_to home_index_path, alert: "unable to tweet. try again later."
	  end
  end

  def destroy
	  @micropost = current_user.microposts.find(params[:id])
	  @micropost.destroy

	  redirect_to home_index_path, notice: "tweet deleted."
  end
end
