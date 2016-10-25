class RegistrationsController < Devise::RegistrationsController
  def privacidad
  	respond_with(@user)
  end

  private
    def sign_up_params
      params.require(:user).permit(:nombre, :apellido, :fecha_nacimiento, :telefono, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.require(:user).permit(:nombre, :apellido, :fecha_nacimiento, :telefono, :email, :password, :password_confirmation, :current_password)
    end
end