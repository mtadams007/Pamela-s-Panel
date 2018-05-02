class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :password
      t.string :profileable_type
      t.integer :profileable_id

      t.timestamps
    end
    add_index :profiles, [:profileable_type, :profileable_id]
  end
end
