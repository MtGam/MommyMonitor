class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :response
      t.integer :author_id
      t.integer :mother_id

      t.timestamps
    end
  end
end
