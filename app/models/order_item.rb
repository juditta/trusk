class OrderItem < ActiveRecord::Base
  attr_accessible :order_id, :price, :product_id, :quantity, :state

  belongs_to :order
  belongs_to :product

  def price_brutto
  	price+(price*product.vat*0.01)
  end

  def subtotal
  	quantity*price_brutto
  end

  def remove_state
  	product.state-quantity
  end

end
