class ApplicationController < ActionController::Base
  config.paths.add'lib',eager_load:true

  before_action :authenticate_user!,except: [:top, :about, :public_action]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  user_path(resource)
  end

   private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name])
  end

end