# == Schema Information
#
# Table name: companies
# name          :string
# address       :string
# city          :string
# province      :string
# postalcode    :integer
# sector        :string
# phone_number  :string
# owner         :string

class Company < ActiveRecord::Base
  has_one    :picture, as: :owner, dependent: :destroy

  accepts_nested_attributes_for :picture

  belongs_to :user
  validates :name, :address, :city, :province, :postalcode, :sector, :phone_number, :owner, presence: true
end
