# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Photo.destroy_all

dtm = User.create(email: "dtmcquade@gmail.com", username: "danmcquade", password: "password")
mike = User.create(email: "mikesmith@gmail.com", username: "mikesmith", password: "password")
john = User.create(email: "johnjones@gmail.com", username: "johnjones", password: "password")

dtm.photos.create(title: "NYC Highline", url: File.open(File.join(Rails.root, '/app/assets/images/1.jpg')))
dtm.photos.create(title: "Winter Beach", url: File.open(File.join(Rails.root, '/app/assets/images/2.jpg')))
dtm.photos.create(title: "Lahinch Coast", url: File.open(File.join(Rails.root, '/app/assets/images/3.jpg')))

mike.photos.create(title: "Irish Cliffs", url: File.open(File.join(Rails.root, '/app/assets/images/4.jpg')))
mike.photos.create(title: "Maine Ave", url: File.open(File.join(Rails.root, '/app/assets/images/5.jpg')))
mike.photos.create(title: "Dublin Bridge", url: File.open(File.join(Rails.root, '/app/assets/images/6.jpg')))

john.photos.create(title: "Rehoboth Birds", url: File.open(File.join(Rails.root, '/app/assets/images/7.jpg')))
john.photos.create(title: "Washington Monument", url: File.open(File.join(Rails.root, '/app/assets/images/8.jpg')))
john.photos.create(title: "Monument at Night", url: File.open(File.join(Rails.root, '/app/assets/images/9.jpg')))
