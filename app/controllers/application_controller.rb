class ApplicationController < ActionController::Base
  # check_authorization
  
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to root_url, :alert => exception.message
  # end
  
  protect_from_forgery


  def index
  	if params[:modul]
  	 	session[:modul]=params[:modul]
  	end
  end
end
