class ProfilesController < ApplicationController

  def show
    if params[:id]
      @user = User.find params[:id]
    else
      @user = current_user
    end
  end

  def edit
    user = current_user
    redirect_to profile_path
  end

  def update
    safe_user = params.require(:user).permit(:name, :bio, :pic)
    current_user.update safe_user
    redirect_to profile_path
  end

  #def create
  #  safe_user = params.require(:User).permit(:name, :bio, :image)
  #  user = Profile.create safe_user
  #  redirect_to user
  #end
  #

end

