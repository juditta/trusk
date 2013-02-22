class Delivery < ActiveRecord::Base
  attr_accessible :contractor_id, :date_delivery, :date_order, :number, :state
end
