class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|
      t.string :first_name
      t.string :last_name
      t.integer :salary
      t.string :education

      t.timestamps
    end
  end
end
