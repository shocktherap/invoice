# == Schema Information
#
# Table name: authentications
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  provider     :string(255)
#  uid          :string(255)
#  token        :string(255)
#  token_secret :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Authentication < ActiveRecord::Base
  # attr_accessible :user_id, :provider, :uid
  belongs_to :user
end
