# == Schema Information
#
# Table name: user_billings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  billing_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class UserBilling < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :billing
end
