class HomeController < ApplicationController
	# before_filter :authenticate_user!, :except => [:index]
	# load_and_authorize_resource
# Access Current User
  def index

  	@pageclass = 'frontpage'

  end
end  