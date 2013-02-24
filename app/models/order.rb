class Order < ActiveRecord::Base
  attr_accessible :contractor_id, :date_delivery, :date_order, :number, :state

  belongs_to :contractor
  has_many :order_items, :dependent => :destroy

  def total
   	order_items.map do |i| i.subtotal end.sum
  end

  def remove_state
    order_items.map  do |i| 
      i.product.state +(i.product.converter*i.qantity)
    end
  end

end
