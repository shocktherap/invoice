# == Schema Information
#
# Table name: tickets
#
#  id          :integer          not null, primary key
#  billing_id  :integer
#  from        :string(255)
#  destination :string(255)
#  departure   :datetime
#  arrive      :datetime
#  class       :datetime
#  passenger   :string(255)
#  quantity    :integer
#  discount    :integer
#  price       :float
#  total       :float
#

class Ticket < ActiveRecord::Base
  belongs_to :invoice
end
