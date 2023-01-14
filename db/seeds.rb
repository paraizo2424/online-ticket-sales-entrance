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
