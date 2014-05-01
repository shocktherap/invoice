# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  code        :integer
#  user_id     :integer
#  category_id :integer
#  price       :integer
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  brand       :string(255)
#

class Product < ActiveRecord::Base
  has_one  :picture, as: :owner, dependent: :destroy
  accepts_nested_attributes_for :picture

  belongs_to :user

  validates :name, :brand, :price, :category_id, :code, :description, presence: true
  validates :price, numericality: true
  validates :code, uniqueness: true
end
