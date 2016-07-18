class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :password_digest
      t.boolean :doc_admin
      t.date :dob
      t.integer :children
      t.boolean :trimester
      t.string :doc_qual
      t.string :regis_number

      t.timestamps
    end
  end
end
