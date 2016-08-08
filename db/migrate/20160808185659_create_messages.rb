class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string   "Body"
      t.string   "From"
      t.string   "To"
      t.timestamps
    end
  end
end
