# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  billing_id :integer
#  product_id :integer
#  quantity   :integer
#  discount   :integer
#  total      :float
#  created_at :datetime
#  updated_at :datetime
#

class Item < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :product
end
