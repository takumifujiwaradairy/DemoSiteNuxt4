# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.create(title: 'AAA', body: 'AAAAAAAAAAAAAAAAAA')
Article.create(title: 'BBB', body: 'BBBBBBBBBBBBBBBBBB')
Article.create(title: 'CCC', body: 'CCCCCCCCCCCCCCCCCC')

User.create(name: 'スズキ', email: 'aaa@gmail.com', password: 'AAAAAA')
User.create(name: 'サイトウ', email: 'bbb@gmail.com', password: 'BBBBBB')
User.create(name: 'ヤマダ', email: 'ccc@gmail.com', password: 'CCCCCC')