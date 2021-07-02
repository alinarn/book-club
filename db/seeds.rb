# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.delete_all
Book.create!(title: "The Book Thief",
  description: "It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will be busier still.",
  author: "Markus Zusak",
  publication_date: "September 1st 2005",
  read_date: Date.parse('01.08.2021'),
  image_url: 'thief.jpg'
  )

Book.create!(title: "Norwegian Wood",
  description: "Toru, a quiet and preternaturally serious young college student in Tokyo,
  is devoted to Naoko, a beautiful and introspective young woman, but their mutual passion is marked by the tragic death of their best friend years before.", 
  author: "Haruki Murakami",
  publication_date: "September 4th 1987",
  read_date: Date.parse('22.12.2020'),
  image_url: 'wood.jpg'
  )
Book.create!(title: "Who owns the future?",
  description: "Tis his visionary reckoning with the most urgent economic
                and social trend of our age: the poisonous concentration of money and power in our digital networks.",
  author: "Jaron Lanier",
  publication_date: "March 7th 2013",
  image_url: 'future.jpg'
  )