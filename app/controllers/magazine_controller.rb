class MagazineController < ApplicationController
	layout	"magazine"

  def index
  end

  def pz


  	if [:id]
  		session[:contractor_id] = params[:id]

  	else
  		@contractors = Contractor.search(params[:search]).paginate(:per_page => 2, :page => params[:page]) 
  	end
  	# @products = Product.search(params[:search]).paginate(:per_page => 2, :page => params[:page]) 
  end

  def wz
  end

end
