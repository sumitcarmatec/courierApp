class CreateCouriers < ActiveRecord::Migration[6.1]
  def change
    create_table :couriers do |t|
      t.integer :sender_id, null: false, foreign_key: true
      t.integer :receiver_id, null: false, foreign_key: true
      t.float :weight
      t.integer :service_type
      t.float :price
      t.integer :payment_mode
      t.integer :status
      t.string :serial_no

      t.timestamps
    end
  end
end
