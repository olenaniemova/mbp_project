# frozen_srting_literal: true

# class Application Controller
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[index show]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password)
    end
  end

  def after_sign_in_path_for(resource)
    if current_user.profile.nil?
      new_profile_path
    else
      root_path
    end
  end
end
