class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_admin
    if !(user_signed_in?)
     return redirect_to user_session_path, :notice => "You have to sign in to access this page"
    end
  end

  def after_sign_in_path_for(resource_or_scope)
   	return interests_path
  end

  def after_sign_out_path_for(resource_or_scope)
   	return user_session_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :age])
  end
end
