class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :shop_id
      t.integer :points

      t.timestamps
    end
    add_index :enrollments, :shop_id
  end
end
