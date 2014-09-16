class AddCustomerToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :customer_id, :integer
  end
end
