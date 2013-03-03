class Unit < ActiveRecord::Base
  attr_accessible :name

  has_many :others
  has_and_belongs_to_many :products
end
