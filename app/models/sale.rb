class Sale < ApplicationRecord
  has_many :sale_tickets
  has_many :tickets, through: :sale_tickets

  belongs_to :user
  belongs_to :staff
end
