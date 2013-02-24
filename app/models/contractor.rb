class Contractor < ActiveRecord::Base
  attr_accessible :type_contractors, :bank_account, :city, :code, :discount, :email, :fax, :maturity, :name, :pesel, :phone1, :phone2, :regon, :sale, :short_name, :street

  # belongs_to :type_contractor
  has_many :deliveries
  has_many :orders

  def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  

end
