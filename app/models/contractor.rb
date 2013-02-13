class Contractor < ActiveRecord::Base
  attr_accessible :type_contractors, :bank_account, :city, :code, :discount, :email, :fax, :maturity, :name, :pesel, :phone1, :phone2, :regon, :sale, :short_name, :street

  # belongs_to :type_contractor

  def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end  

end
