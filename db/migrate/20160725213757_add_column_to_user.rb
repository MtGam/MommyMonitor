class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tri_1_1, :string
    add_column :users, :tri_1_2, :string
    add_column :users, :tri_1_3, :string
    add_column :users, :tri_2_1, :string
    add_column :users, :tri_2_2, :string
    add_column :users, :tri_2_3, :string
    add_column :users, :tri_3_1, :string
    add_column :users, :tri_3_2, :string
    add_column :users, :tri_3_3, :string

    remove_column :users, :tri_1, :boolean
    remove_column :users, :tri_2, :boolean
    remove_column :users, :tri_3, :boolean

    change_column :users, :phone, :string

    add_column :comments, :doctor_id, :integer
    add_column :comments, :commenter_id, :integer
    add_column :comments, :trimester_id, :integer
    add_column :comments, :comment, :text

    remove_column :comments, :author_id, :integer
    remove_column :comments, :response, :text

  end
end
