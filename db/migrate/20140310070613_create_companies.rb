class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :user_id
      t.string  :name
      t.string  :address
      t.string  :city
      t.string  :province
      t.integer :postalcode
      t.string  :sector
      t.string  :phone_number
      t.string  :owner

      t.timestamps
    end
  end
end
