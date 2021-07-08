class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.text :address
      t.string :mobile_no
      t.integer :pin_code
      t.integer :user_type

      t.timestamps
    end
  end
end
