class Ticket < ApplicationRecord
  has_many :sale_tickets
  has_many :sales, through: :sale_tickets

  belongs_to :event_time
end
