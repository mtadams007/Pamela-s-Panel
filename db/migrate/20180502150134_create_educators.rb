class CreateEducators < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :is_admin
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :salary
      t.string :education

      t.timestamps
    end
  end
end
