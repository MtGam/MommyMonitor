class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tri_1, :boolean
    add_column :users, :tri_2, :boolean
    add_column :users, :tri_3, :boolean
  end
end
