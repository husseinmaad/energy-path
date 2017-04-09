class User < ApplicationRecord

  # validates :email , :email_link , uniqueness: true
  has_many :logs

  has_secure_password

  def full_name
    self.first_name.capitalize + " " + self.last_name.capitalize
  end

end 
