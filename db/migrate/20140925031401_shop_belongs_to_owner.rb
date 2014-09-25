class ShopBelongsToOwner < ActiveRecord::Migration
  def change
    add_column :shops, :owner_id, :integer
  end
end
