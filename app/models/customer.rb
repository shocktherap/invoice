# == Schema Information
#
# Table name: customers
# name                    :string
# address                 :string
# city                    :string
# province                :string
# postalcode              :integer
# phone_number            :string
# owner                   :string
# caretaker               :string
# caretaker_email         :string
# caretaker_phone_number  :string

class Customer < ActiveRecord::Base
  belongs_to :user

  validates :name, :address, :city, :province, :phone_number, :postal_code, :owner, :email, :caretaker, :caretaker_email, :caretaker_phone_number, presence: true
end
