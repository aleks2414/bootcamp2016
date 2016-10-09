class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :name, :team, :inte1, :cuenta1, :inte2, :cuenta2, :inte3, :cuenta3, :inte4, :cuenta4, :inte5, :cuenta5) }
end

def stored_location_for(resource)
  nil
end

def after_sign_in_path_for(resource)
	if current_user.admin?
  	users_path
	else
		edit_user_registration_path
 	end
end

end
