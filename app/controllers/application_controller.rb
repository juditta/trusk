class ApplicationController < ActionController::Base
  # before_filter :check_sign_in


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  protect_from_forgery

  
#   def check_sign_in
#     unless user_signed_in?
    
#     respond_to do |format| 
#       format.html { redirect_to sign_in, notice: 'Brak dostepu, zaloguj sie' }
#     end
#   end 
# end

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
