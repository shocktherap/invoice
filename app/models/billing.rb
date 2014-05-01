# == Schema Information
#
# Table name: billings
#
#  id               :integer          not null, primary key
#  number           :integer
#  customer_id      :integer
#  published        :date
#  expired          :date
#  purchase_order   :string(255)
#  note             :text
#  discount         :integer
#  tax              :integer
#  delivery_service :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Billing < ActiveRecord::Base
  belongs_to  :user_billing
  has_many    :tickets
  has_many    :items
end
