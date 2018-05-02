class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :cohort_id
      t.string :grade
      t.integer :cohort_id
      t.integer :student_id

      t.timestamps
    end
  end
end
