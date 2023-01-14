class SaleTicket < ApplicationRecord
  belongs_to :sale
  belongs_to :ticket
end
