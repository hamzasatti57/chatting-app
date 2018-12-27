class AdminController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:super_admin).permit( :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:super_admin).permit( :email, :password, :password_confirmation, :current_password)
  end
end