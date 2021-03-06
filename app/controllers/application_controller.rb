class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
	devise_parameters_sanitizer.permit(:update, keys: [:first_name, :last_name, :url])
	devise_parameters_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :password_confirmation) }
  end
end
