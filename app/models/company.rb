# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  name         :string(255)
#  address      :string(255)
#  city         :string(255)
#  province     :string(255)
#  postalcode   :integer
#  sector       :string(255)
#  phone_number :string(255)
#  owner        :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Company < ActiveRecord::Base
  has_one    :picture, as: :owner, dependent: :destroy
  accepts_nested_attributes_for :picture

  belongs_to :user
  validates :name, :address, :city, :province, :postalcode, :sector, :phone_number, :owner, presence: true
end
