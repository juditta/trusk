class DeliveryProduct < ActiveRecord::Base
  attr_accessible :delivery_id, :price, :product_id, :quantity, :vat

  belongs_to :product, :foreign_key => "product_id"
  belongs_to :delivery, :foreign_key => "delivery_id"

  def price_brutto
  	price+(price*vat*0.01)
  end

  def subtotal
  	quantity*price_brutto
  end


end
