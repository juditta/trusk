class Delivery < ActiveRecord::Base
  attr_accessible :contractor_id, :date_delivery, :date_order, :number, :state


  belongs_to :contractor, :foreign_key => "contractor_id"
  has_many :delivery_products

  def subtotals
  	delivery_products.map  do |i| i.subtotal end
  end

  def total 
  	subtotals.sum
  end

  # def total
  # 	delivery_products.map |i| i.subtotal end.sum
  # end
end
