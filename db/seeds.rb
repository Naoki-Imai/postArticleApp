# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |no|
  Post.create(title: "test#{no}", content: "This is Test", menu_id: "1", link_url: "http://www.example.com")
end
3.times do |no|
  Post.create(title: "test#{no}", content: "This is Test", menu_id: "2", link_url: "http://www.example.com")
end
3.times do |no|
  Post.create(title: "test#{no}", content: "This is Test", menu_id: "3", link_url: "http://www.example.com")
end