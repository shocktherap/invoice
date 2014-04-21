class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.string  :name
      t.string  :address
      t.string  :city
      t.string  :province
      t.integer :postal_code
      t.string  :phone_number
      t.string  :owner
      t.string  :email
      t.string  :caretaker
      t.string  :caretaker_email
      t.string  :caretaker_phone_number

      t.timestamps
    end
  end
end
