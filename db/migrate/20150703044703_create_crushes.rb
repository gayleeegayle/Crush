class CreateCrushes < ActiveRecord::Migration
  def change
    create_table :crushes do |t|
      t.string :first_name
      t.string :last_name
      t.integer :course_id
      t.string :gender

      t.timestamps null: false
    end
  end
end
