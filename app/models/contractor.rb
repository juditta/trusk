class Contractor < ActiveRecord::Base
  attr_accessible :type_contractors, :bank_account, :city, :code, :discount, :email, :fax, :maturity, :name, :pesel, :phone1, :phone2, :regon, :sale, :short_name, :street

  # validates :type_contractors, :city, :code, :email, :name, :pesel, :phone1, :short_name, :street, :presence => true #, :on => :update
  # validates :pesel, :regon, :length => { :in => 10..11 }
  # validates :phone1, :phone2, :length => { :is => 9 }
  # validates :code, :length => { :is => 5 }

  # validates :phone1, :phone2, :regon, :code, :bank_account, :fax, :pesel, :regon, :numericality => true
  # validates :email, :pesel, :regon, :short_name, :uniqueness => true

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
