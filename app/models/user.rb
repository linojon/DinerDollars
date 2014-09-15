class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role?(base_role)
   role == base_role.to_s
  end

  self.inheritance_column = :type

  scope :owner, -> {where type: 'Owner'}
  scope :customer, -> {where type: 'Customer'}
end

class Owner < User
end

class Customer < User

end
