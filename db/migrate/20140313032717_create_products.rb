class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :code
      t.integer :user_id
      t.integer :category_id
      t.integer :price
      t.string  :name
      t.text    :description

      t.timestamps
    end
  end
end
