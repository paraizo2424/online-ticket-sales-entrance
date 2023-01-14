class DebugPagesController < ApplicationController
  def select_actor
    @users = User.all
    @staffs = Staff.all
    @sales = Sale.all
    @eventers = Eventer.all
    @event_places = EventPlace.all
    @event_names = EventName.all
    @event_times = EventTime.all
    @tickets = Ticket.all
    @sale_tickets = SaleTicket.all
  end
end
