class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    allow_parameters = %i[user_name name kana number course_id type]
    devise_parameter_sanitizer.permit(:sign_up, keys: allow_parameters)
    devise_parameter_sanitizer.permit(:account_update, keys: allow_parameters)
  end
end
