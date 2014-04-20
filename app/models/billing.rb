class Billing < ActiveRecord::Base
  belongs_to  :user_billing
  has_many    :tickets
  has_many    :items
end
