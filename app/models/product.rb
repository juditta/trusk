class Product < ActiveRecord::Base
  attr_accessible :barcode, :converter, :expiration_date, :index, :measure, :name, :price_a, :price_b, :quantity_price, :retial_price, :spree_products_id, :state, :state_max, :state_min, :type_product, :unit_basic, :unit_sale, :vat

  belongs_to :unit, :foreign_key => "unit_sale"
  # belongs_to :unit, :foreign_key => "unit_basic"

  
  def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  
  
end
