# == Schema Information
#
# Table name: companies
# name          :string

class Category < ActiveRecord::Base
  validates :name, presence: true
end
