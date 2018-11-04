class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.references :event, foreign_key: true
      t.datetime :start_time, null: false
      t.datetime :end_time,   null: false

      t.timestamps
    end
  end
end
