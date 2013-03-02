class ApplicationController < ActionController::Base
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  protect_from_forgery


  def index
  	if params[:modul] == 'zaopatrzenie' || params[:modul] == 'produkcja' || params[:modul] == 'sprzedaz'
  	 	session[:modul]=params[:modul]
  	elsif 
  		params[:modul] == 'moduly'
  		session[:modul] = nil
   		# redirect_to root_url
  	end 
  end
end
