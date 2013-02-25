class ApplicationController < ActionController::Base
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  protect_from_forgery


  def index
  	if params[:modul] == 'magazyn' || params[:modul] == 'produkcja' || params[:modul] == 'kartoteki'
  	 	session[:modul]=params[:modul]
  	end
  end
end
