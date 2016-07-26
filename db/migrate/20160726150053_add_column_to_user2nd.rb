class AddColumnToUser2nd < ActiveRecord::Migration[5.0]
  def change

    change_column :users, :trimester, :integer

  end
end
