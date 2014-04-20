class CreateUserInvoices < ActiveRecord::Migration
  def change
    create_table :user_billings do |t|
      t.integer :user_id
      t.integer :billing_id

      t.timestamps
    end
  end
end
