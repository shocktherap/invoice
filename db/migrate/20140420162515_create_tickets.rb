class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer   :billing_id
      t.string    :from
      t.string    :destination
      t.datetime  :departure
      t.datetime  :arrive
      t.datetime  :class
      t.string    :passenger
      t.integer   :quantity
      t.float     :price
      t.float     :total

      t.datetime
    end
  end
end
