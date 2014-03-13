# == Schema Information
#
# Table name: products
# code         :string
# category_id  :string
# price        :string
# name         :string
# description  :integer

class Product < ActiveRecord::Base
  has_one  :picture, as: :owner, dependent: :destroy
  accepts_nested_attributes_for :picture

  belongs_to :user

  validates :name, :brand, :price, :category_id, :code, :description, presence: true
  validates :price, numericality: true
  validates :code, uniqueness: true
end
