class Product < ActiveRecord::Base
  attr_accessible :barcode, :converter, :expiration_date, :index, :measure, :name, :price_a, :price_b, :quantity_price, :retial_price, :spree_products_id, :state, :state_max, :state_min, :type_product, :unit_basic, :unit_sale, :vat
end
