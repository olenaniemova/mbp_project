class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:first_name, :last_name, :about_me, :weight, :height, :birthday,
               :gender, :bpws, :bpvs, :bpww, :bpvw, :hiking_count, :phone,
               :physical_condition_id, :email, :password)
    end
  end
end
