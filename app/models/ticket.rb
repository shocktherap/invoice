class Ticket < ActiveRecord::Base
  belongs_to :invoice
end
