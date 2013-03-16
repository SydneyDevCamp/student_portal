class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
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

end
