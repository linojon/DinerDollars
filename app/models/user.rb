class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def type?(base_type)
   type == base_type.to_s
  end

  self.inheritance_column = nil

  scope :owners, -> {where type: 'Owner' }
  scope :customers, -> {where type: 'Customer' }
end



