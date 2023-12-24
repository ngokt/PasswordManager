class CreatePasswords < ActiveRecord::Migration[7.0]
  def change
    create_table :passwords do |t|
      t.string :name
      t.integer :user_id
      t.string :mail
      t.string :password_digest
      t.text :memo

      t.timestamps
    end
  end
end
