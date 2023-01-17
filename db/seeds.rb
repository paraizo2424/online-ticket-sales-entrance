# Userテーブル挿入
user_range = ('a'..'z')
user_count = user_range.count
user_range.each do |char|
  User.create!(
    name: char * 3,
    email: (char * 3) + "@sample.jp",
    tel: "012-3456-7890",
    password: "password"
  )
end

# Staffテーブル
staff_range = ('A'..'C')
staff_count = staff_range.count
staff_range.each do |char|
  Staff.create!(
    name: char * 3,
    password: "password"
  )
end

# Saleテーブル
# status:購入済み = 2、仮購入 = 1、キャンセル = 0
# stuff_idがnilは未入場
user_count = User.all.count
staff_count = Staff.all.count
sale_count = 50

sale_count.times do |i|
  uuid = SecureRandom.uuid
  staff_id = rand(staff_count) + 1 if i.odd?

  Sale.create!(
    user_id: rand(user_count) + 1,
    staff_id: staff_id,
    status: 2,
    status_datetime: Time.now + 4.day,
    url: uuid
  )
end

# Eventerテーブル
Eventer.create!(
  name: "ABC.com",
  email: "ABC@sample.jp",
  tel: "012-3456-7890",
  password: "password"
)

names = ['○○', '××', '△△', '□□', '■■']
places = ['美術館', 'センター', 'シアター', 'ビル', '公園']

# EventPlaceテーブル
places.each do |place|
  EventPlace.create!(
    name: names.sample + place,
    max_entry: rand(20..100),
    note: "test test."
  )
end

# EventNameテーブル
events = ['展示会', 'ショー', '上映', 'オンラインミーティング', 'フリーマーケット']
event_range = ('A'..'I')
event_count = event_range.count
event_range.each do |char|
  EventName.create!(
    name: (char * 3) + names.sample + events.sample,
    note: "test test."
  )
end

# EventTimeテーブル挿入
# 今日の日付から±3日分のイベントを入力
event_time_count = 100
event_time_count.times do
  entry_time = Time.now + rand(-3..3).day
  entry_time = entry_time.change(
    hour: rand(24),
    min: [0, 30].sample
  )

  EventTime.create!(
    event_place_id: rand(places.count) + 1,
    event_name_id: rand(event_count) + 1,
    entry_time: entry_time,
    exit_time: entry_time + rand(1..3).hour,
    max_entry: rand(10..100)
  )
end

# Ticketテーブル挿入
tickets = [
  {name: "大人", detail: "", price: 2000},
  {name: "こども", detail: "15歳未満対象", price: 500},
  {name: "シニア", detail: "60歳以上対象", price:1000}
]
event_time_count = EventTime.all.count
event_time_count.times do |i|
  tickets.each do |ticket|
    Ticket.create!(
      event_time_id: i + 1,
      name: ticket[:name],
      detail: ticket[:detail],
      price: ticket[:price]
    )
  end
end

# SaleTicketテーブル
sale_ticket_count = 20
sale_count = Sale.all.count

sale_ticket_count.times do |i|
  SaleTicket.create!(
    sale_id: rand(sale_count) + 1,
    ticket_id: i + 1,
    count: rand(1..3)
  )
end
