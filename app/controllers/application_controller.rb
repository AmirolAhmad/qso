class ApplicationController < ActionController::Base
  include Authenticable
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:callsign, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :callsign, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:callsign, :email, :password, :password_confirmation, :current_password) }
  end

  def log_params
  	params.require(:log).permit(:user_id, :date_on, :date_off, :time_on, :time_off, :frequency, :callsign, :operator_name, :mode, :his_rst, :my_rst, :power, :qth, :state, :country, :notes)
  end
end
