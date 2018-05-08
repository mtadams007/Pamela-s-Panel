class CreateEducators < ActiveRecord::Migration[5.2]
  def change
    create_table :educators do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :salary
      t.string :education
      t.integer :house_id

      t.timestamps
    end
  end
end
