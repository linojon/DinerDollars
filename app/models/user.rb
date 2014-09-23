class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # owner-specific
  has_one :shop

  # customer-specific
  has_many :enrollments, foreign_key: 'customer_id'
  has_many :shops, through: :enrollments


  scope :owners, -> {where role: 'Owner' }
  scope :customers, -> {where role: 'Customer' }
  scope :admin, -> {where role: 'Admin' }

  def role?(base_role)
   role == base_role.to_s
  end

  def customer?
    role == 'Customer' || role.blank?
  end

  def owner?
    role == 'Owner'
  end

  def admin?
    false
  end
end



