class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password, :first_name, :last_name, :phone_number, :city, :website, :avatar, :city_id, :text, :cover, :category_id, :category, :datewed, :instagram, :facebook, :site])
  end
end
