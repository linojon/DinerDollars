class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role?(base_role)
   role == base_role.to_s
  end

  self.inheritance_column = nil

  scope :owners, -> {where role: 'Owner' }
  scope :customers, -> {where role: 'Customer' }
  scope :admin, -> {where role: 'Admin' }

  def owner?
    role == 'Owner'
  end

  def admin?
    false
  end
end



