class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :user, foreign_key: true
      t.references :performance, foreign_key: true
      t.integer :status, null: false
      t.integer :access
      t.monetize :price, null: false

      t.timestamps
    end
  end
end
