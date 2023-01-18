class TicketShopsController < ApplicationController
  def select_place
    @event_places = EventPlace.all
  end

  def select_date
    event_times = EventTime.select(:entry_time)
                            .group(:entry_time)
                            .order(entry_time: :asc)

    @event_dates = []
    event_times.each do |event_time|
      @event_dates << event_time.entry_time.to_date
    end
    @event_dates.uniq!
  end

  def select_time
    event_times = EventTime.where("event_place_id = ?", 1)
                          .order(event_name_id: :asc)

    @event_names = []
    ary = []
    temp = nil

    event_times.each do |event_time|
      if event_time.event_name.id != temp && !temp.nil?
        @event_names << ary.dup
        ary.clear
      end
      
      ary << event_time

      temp = event_time.event_name.id
    end
    @event_names << ary.dup
  end

  def select_ticket
    @event = EventTime.first

    @tickets = @event.tickets
  end

  def buy_ticket
    @event = EventTime.first

    @tickets = @event.tickets
  end

  def thanks
  end
end
