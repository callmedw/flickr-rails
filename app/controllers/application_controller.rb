class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:user_name, :name, :email, :password) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:user_name, :name, :email, :password, :current_password, :avatar) }
  end
end
