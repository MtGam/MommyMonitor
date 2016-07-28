class AddMotherColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mother, :boolean
  end
end
