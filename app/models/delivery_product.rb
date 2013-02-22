class DeliveryProduct < ActiveRecord::Base
  attr_accessible :delivery_id, :price, :product_id, :quantity, :vat
end
