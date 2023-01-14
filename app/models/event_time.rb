class EventTime < ApplicationRecord
  has_many :tickets

  belongs_to :event_name
  belongs_to :event_place
end
