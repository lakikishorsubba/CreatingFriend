class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameter, if: :devise_controller?
  protected

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_pic])
    devise_parameter_sanitizer.permit(:account_update, keys: [:profile_pic])
  end
end
