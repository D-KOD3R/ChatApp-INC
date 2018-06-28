class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Sanatizing extra parameters to devise
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

private
# Universal redirector and notifier
  def redirect_and_flash message, message_type, path
    flash[message_type] = message
    redirect_to path
  end


end
