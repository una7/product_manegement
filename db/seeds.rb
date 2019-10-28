# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db: command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

CSV.foreach('db/age.csv', headers: true) do |row|
  Age.create(
    age: row['age'],
    season: row['season']
  )
end


['楽天','ヤフオク','ブランディア','店舗']
.each do |stock|
  Stock.create!(
    {place: stock }
  )
end

# ['メルカリ','ラクマ','ヤフオク','Paypay','BASE','insta','直接']
# .each do |stock|
#   Stock.create!(
#     {place: stock }
#   )
# end