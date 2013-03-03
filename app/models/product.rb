class Product < ActiveRecord::Base
  resourcify
  
  after_initialize :default_values
  attr_accessible :barcode, :converter, :expiration_date, :index, :measure, :name, :price_a, :price_b, :quantity_price, :retial_price, :spree_products_id, :state, :state_max, :state_min, :category_id, :unit_basic, :unit_sale, :vat

  validates :index, :name, :presence => true, :uniqueness => true 
  
  belongs_to :unit, :foreign_key => "unit_sale"
  belongs_to :category

  has_many :delivery_products 
  has_many :order_items
  has_many :specyfications

  # belongs_to :unit, :foreign_key => "unit_basic"


  def vatob
    vat*0.01
  end
   
  def price_brutto 
    quantity_price+(quantity_price*vatob)
  end
  def retial_brutto
    retial_price+(retial_price*vatob) 
  end
  def price_a_brutto
    price_a+(price_a*vatob)
  end
  def price_b_brutto
    price_b+(price_b*vatob)
  end
  def profit(price)
    price-medium_price
  end
  
  def medium_price
      if category_id == 1
        specyfic_subtotals.sum
      else

    quantity_price
    # price = '0.00'
    # quantity='0'
   
    # delivery_products.map  do |p| 
    #   price=price+(p.price*p.quantity)
    #   quantity=quantity+p.quantity   
    # end
    # medium=price/quantity
    # return medium
  end
  end  


  def specyfic_subtotals
    specyfications.map  do |i| i.specyfic_subtotal end
  end

  def value
    medium_price*measure
  end
     
  def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  
  private
    def default_values
      self.vat ||= "0"
      self.converter ||= "1"
      self.quantity_price ||= "0.00"
      self.retial_price ||= "0.00"
      self.price_a ||= "0.00"
      self.price_b ||= "0.00"
      self.state ||= "0"
      self.unit_sale ||= "1"
      self.measure ||="1"
    end
end
