# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |n|
  User.create!(
    name: "テストユーザー#{n + 1}",
    email: "test#{n + 1}@test.com",
    password: "123456"
  )
end

# User.create!(
#   name: "中村　充樹",
#   email: "3flower.atu87@gmail.com",
#   password: "atuki1125"
# )
# 5.times do |n|
#   Task.create!(
#     user_id: n + 1,
#     title: "タイトルタイトルタイトルタイトル",
#     content: "内容内容内容内容内容内容内容内容
#               内容内容内容内容内容内容内容内容
#               内容内容内容内容内容内容内容内容
#               内容内容内容内容内容内容内容内容
#               内容内容内容内容内容内容内容内容",
#     in_charge_name: "テストユーザー#{n + 1}"
#   )
# end
