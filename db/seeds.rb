# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book_one = Book.create(title: 'Harry potter and the philosophers stone', author: 'JK Rowlings', genre: 'Fantasy')

review_one = Review.create(rating: 10, comments: 'One of my favorites! I could read it over and over again!', book_id: book_one.id)