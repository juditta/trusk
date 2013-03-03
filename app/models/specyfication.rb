class Specyfication < ActiveRecord::Base
  attr_accessible :product_id, :quantity, :specific_id, :type_specific_id

  validates :product_id, :specific_id, :type_specific_id, :presence => true
  validates :quantity, :presence => true, :on => :update

  validates_uniqueness_of :product_id, :scope => [:specific_id, :type_specific_id ]

  belongs_to :type_specific

  belongs_to :equipment, :foreign_key => "specific_id"
  belongs_to :position, :foreign_key => "specific_id"
  belongs_to :other, :foreign_key => "specific_id"
  belongs_to :product, :foreign_key => "specific_id"

  belongs_to :product, :foreign_key => "product_id"

  def specyfic_subtotal
  	case type_specific_id
  	when 1
  		price = product.medium_price
  	when 4
  		price = position.rate
  	when 5
  		price = equipment.rate
  	when 6
  		price = other.value
  	end
  		quantity*price
  end	
  private
    def default_values
      self.quantity ||= "0.00"
     end
end
