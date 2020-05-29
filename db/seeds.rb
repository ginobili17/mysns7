# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(
  [
    {name: '和食'},
    {name: 'イタリアン'},
    {name: 'フレンチ'},
    {name: 'スパニッシュ'},
    {name: '中華'},
    {name: 'ベジタリアン'},
    {name: 'ファーストフード'},
    {name: 'ドリンク'},
  ]
)