# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do
  article = Article.create!(title: Faker::Book.title, content: Faker::ChuckNorris.fact, user_id: Faker::Number.between(1, 13))
end
  
15.times do
  jadore = Like.create!(content: Faker::ChuckNorris.fact, user_id: Faker::Number.between(1, 13), article_id: Faker::Number.between(1, 2))
end
  
10.times do
  comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: Faker::Number.between(1, 13), article_id: Faker::Number.between(1, 2))
end