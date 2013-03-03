class Equipment < ActiveRecord::Base
  attr_accessible :name, :rate, :symbol

  has_many :specyfications

end
