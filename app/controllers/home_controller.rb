class HomeController < ApplicationController
  before_action :is_admin?, only: [:admin_panel] 
  
  def index
  end
  
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
   
    redirect_to admin_panel_path
  end
  
  def user_panel
    @users = User.where(is_admin: false)
  end
  
  def admin_panel
    @users = User.where(is_admin: false)
  end
  
  private
  
  def is_admin?
    if current_user && current_user.is_admin? == true
      return true
    else
      redirect_back fallback_location: user_panel_path, :notice => "You are not authorize to see this page"
      return false
    end
  end
end
