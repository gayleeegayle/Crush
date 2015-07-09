class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :crush_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :location

      t.timestamps null: false
    end
  end
end
