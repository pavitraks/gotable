class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_up_path_for(resource)
    session[:plan_id] = params[:plan_id]
    setup_organization_path(:organization_setup)
  end
end