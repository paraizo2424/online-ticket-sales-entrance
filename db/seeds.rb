# Userテーブル挿入
user_range = ('a'..'g')
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
event_range.each do |char|
  EventName.create!(
    name: (char * 3) + names.sample + events.sample,
    note: "test test."
  )
end

# EventTimeテーブル挿入
# 今日の日付から±3日分のイベントを入力
event_name_count = EventName.count
event_place_count = EventPlace.count
time_current = Time.current

(-3..3).each do |i|
  entry_time = time_current + i.day
  entry_time = entry_time.change(
    hour: rand(24),
    min: [0, 15, 30, 45].sample
  )

  1.upto event_name_count do |j|
    1.upto event_place_count do |k|
      EventTime.create!(
        event_name_id: j,
        event_place_id: k,
        entry_time: entry_time,
        exit_time: entry_time + rand(1..3).hour,
        max_entry: rand(10..100)
      )
    end
  end
end

# Ticketテーブル挿入
tickets = [
  {name: "大人", detail: "", price: 2000},
  {name: "こども", detail: "15歳未満対象", price: 500},
  {name: "シニア", detail: "60歳以上対象", price:1000}
]
event_time_count = EventTime.count
1.upto event_time_count do |i|
  tickets.each do |ticket|
    Ticket.create!(
      event_time_id: i,
      name: ticket[:name],
      detail: ticket[:detail],
      price: ticket[:price]
    )
  end
end

# Saleテーブル
# status:購入済み = 2、仮購入 = 1、キャンセル = 0
# stuff_idがnilは未入場
user_count = User.count
staff_count = Staff.count

sale_count = 10

1.upto user_count do |j|
  sale_count.times do |i|
    uuid = SecureRandom.uuid
    staff_id = rand(staff_count) + 1 if i.odd?

    Sale.create!(
      user_id: j,
      staff_id: staff_id,
      status: 2,
      status_datetime: Time.now + rand(5).day,
      url: uuid
    )
  end
end

# SaleTicketテーブル
users = User.limit 3
i = 1
users.each do |user|
  user.sales.each do |sale|
    i.upto (i + 2) do |j|
      SaleTicket.create!(
        sale_id: sale.id,
        ticket_id: j,
        count: rand(1..3)
      )
    end

    i += 3
  end
end
