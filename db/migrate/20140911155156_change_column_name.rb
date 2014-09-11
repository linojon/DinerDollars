class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :shops, :type, :kind
  end
end
