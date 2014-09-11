class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :type
      t.string :location
      t.string :codename
      t.integer :codenumber

      t.timestamps
    end
  end
end
