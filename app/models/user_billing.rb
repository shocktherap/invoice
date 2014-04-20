class UserBilling < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :billing
end
