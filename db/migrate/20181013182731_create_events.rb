class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name,      null: false
      t.text :description, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
