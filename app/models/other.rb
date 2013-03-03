class Other < ActiveRecord::Base
  attr_accessible :name, :symbol, :unit_id, :value

  belongs_to :unit
end
