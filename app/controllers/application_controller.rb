class ApplicationController < ActionController::Base
  before_filter :authenticate_user!, :get_users
  protect_from_forgery
  layout :layout_by_resource



  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  protected

  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end

  private

  def get_users
    @users = User.all
    @published_weeks = Week.published
  end

end
