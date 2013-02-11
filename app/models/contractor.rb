class Contractor < ActiveRecord::Base
  attr_accessible :bank_account, :city, :code, :discount, :email, :fax, :maturity, :name, :pesel, :phone1, :phone2, :regon, :sale, :short_name, :street, :type, :zone_id
end
