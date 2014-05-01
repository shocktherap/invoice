# == Schema Information
#
# Table name: customers
#
#  id                     :integer          not null, primary key
#  user_id                :integer
#  name                   :string(255)
#  address                :string(255)
#  city                   :string(255)
#  province               :string(255)
#  postal_code            :integer
#  phone_number           :string(255)
#  owner                  :string(255)
#  email                  :string(255)
#  caretaker              :string(255)
#  caretaker_email        :string(255)
#  caretaker_phone_number :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class Customer < ActiveRecord::Base
  belongs_to :user

  validates :name, :address, :city, :province, :phone_number, :postal_code, :owner, :email, :caretaker, :caretaker_email, :caretaker_phone_number, presence: true
end
