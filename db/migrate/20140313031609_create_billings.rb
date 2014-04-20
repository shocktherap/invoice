class CreateBillings < ActiveRecord::Migration
  def change
    create_table :billings do |t|
      t.integer :number
      t.integer :customer_id
      t.date    :published
      t.date    :expired
      t.string  :purchase_order
      t.text    :note
      t.integer :discount
      t.integer :tax
      t.integer :delivery_service

      t.timestamps
    end
  end
end
