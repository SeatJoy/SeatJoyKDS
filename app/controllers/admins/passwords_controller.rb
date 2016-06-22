class Admins::PasswordsController < Devise::PasswordsController

private
  def resource_params
    params.require(:admin).permit(
      :email, :password, :password_confirmation
    )
  end
end
