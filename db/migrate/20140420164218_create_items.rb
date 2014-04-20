class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :billing_id
      t.integer :product_id
      t.integer :quantity
      t.float   :total

      t.timestamps
    end
  end
end
