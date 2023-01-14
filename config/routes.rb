Rails.application.routes.draw do
  get '/debug/select_actor', to:'debug_pages#select_actor'

  root 'ticket_shops#select_place'
  get '/select_date', to: 'ticket_shops#select_date'
  get '/select_time', to: 'ticket_shops#select_time'

  get '/select_ticket', to: 'ticket_shops#select_ticket'
  get '/buy_ticket', to: 'ticket_shops#buy_ticket'
  get '/thanks', to: 'ticket_shops#thanks'

  get '/staff/signin', to: 'staff_pages#signin'
  get '/staff', to: 'staff_pages#index'
  get '/staff/qrcode_reader', to: 'staff_pages#qrcode_reader'
  get '/staff/buy_detail', to: 'staff_pages#buy_detail'

  get '/eventer/signin', to: 'eventer_pages#signin'
  get '/eventer', to: 'eventer_pages#index'
  get '/eventer/add_event_place', to: 'eventer_pages#add_event_place'
  get '/eventer/add_event_name', to: 'eventer_pages#add_event_name'
  get '/eventer/add_event_time', to: 'eventer_pages#add_event_time'
  get '/eventer/add_ticket', to: 'eventer_pages#add_ticket'
  get '/eventer/add_staff', to: 'eventer_pages#add_staff'
  get '/eventer/day_sales', to: 'eventer_pages#day_sales'
  get '/eventer/day_sales_detail', to: 'eventer_pages#day_sales_detail'
  get '/eventer/ticket_sales_detail', to: 'eventer_pages#ticket_sales_detail'

  resources :users
  get '/signup', to: 'users#signup'
  get '/signin', to: 'users#signin'
  get '/mypage', to: 'users#mypage'
  get '/order_history', to:'users#order_history'
  get '/order_detail', to:'users#order_detail'
end
