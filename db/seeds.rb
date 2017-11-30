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
pete = User.create(email: "petepeterson@gmail.com", username: "petepeterson", password: "password")
tom = User.create(email: "tomthompson@gmail.com", username: "tomthompson", password: "password")
frank = User.create(email: "frankfranklin@gmail.com", username: "frankfranklin", password: "password")
alan = User.create(email: "alananderson@gmail.com", username: "alananderson", password: "password")

p1 = dtm.photos.create(title: "NYC Highline", url: File.open(File.join(Rails.root, '/app/assets/images/1.jpg')))
dtm.photos.create(title: "Winter Beach", url: File.open(File.join(Rails.root, '/app/assets/images/2.jpg')))
dtm.photos.create(title: "Lahinch Coast", url: File.open(File.join(Rails.root, '/app/assets/images/3.jpg')))
dtm.photos.create(title: "Glover Park", url: File.open(File.join(Rails.root, '/app/assets/images/11.jpg')))
dtm.photos.create(title: "Beach Chairs", url: File.open(File.join(Rails.root, '/app/assets/images/12.jpg')))
dtm.photos.create(title: "Grazing Cow", url: File.open(File.join(Rails.root, '/app/assets/images/13.jpg')))

mike.photos.create(title: "Irish Cliffs", url: File.open(File.join(Rails.root, '/app/assets/images/4.jpg')))
mike.photos.create(title: "Maine Ave", url: File.open(File.join(Rails.root, '/app/assets/images/5.jpg')))
mike.photos.create(title: "Dublin Bridge", url: File.open(File.join(Rails.root, '/app/assets/images/6.jpg')))
mike.photos.create(title: "Cliffs Of Moher", url: File.open(File.join(Rails.root, '/app/assets/images/14.jpg')))
mike.photos.create(title: "National Cathedral", url: File.open(File.join(Rails.root, '/app/assets/images/15.jpg')))
mike.photos.create(title: "Dupont Circle Twilight", url: File.open(File.join(Rails.root, '/app/assets/images/16.jpg')))

john.photos.create(title: "Rehoboth Birds", url: File.open(File.join(Rails.root, '/app/assets/images/7.jpg')))
john.photos.create(title: "Washington Monument", url: File.open(File.join(Rails.root, '/app/assets/images/8.jpg')))
john.photos.create(title: "Monument at Night", url: File.open(File.join(Rails.root, '/app/assets/images/9.jpg')))
john.photos.create(title: "Manhattan Skyline", url: File.open(File.join(Rails.root, '/app/assets/images/17.jpg')))
john.photos.create(title: "18th Green", url: File.open(File.join(Rails.root, '/app/assets/images/18.jpg')))
john.photos.create(title: "Georgetown Streets", url: File.open(File.join(Rails.root, '/app/assets/images/19.jpg')))
john.photos.create(title: "Key Bridge Sunrise", url: File.open(File.join(Rails.root, '/app/assets/images/20.jpg')))

pete.photos.create(title: "Monuments at Dusk", url: File.open(File.join(Rails.root, '/app/assets/images/21.jpg')))
pete.photos.create(title: "Steamed Crabs", url: File.open(File.join(Rails.root, '/app/assets/images/22.jpg')))
pete.photos.create(title: "Seaside Sunset", url: File.open(File.join(Rails.root, '/app/assets/images/23.jpg')))
pete.photos.create(title: "Winter Pier", url: File.open(File.join(Rails.root, '/app/assets/images/24.jpg')))
pete.photos.create(title: "Barbados Beach", url: File.open(File.join(Rails.root, '/app/assets/images/25.jpg')))

p1.comments.create(body: "What a great shot! New York is such an amazing city!", user: mike)
p1.comments.create(body: "Beautiful photo. I love walking along the High Line in the summer.", user: john)
p1.comments.create(body: "Awesome capture. You really brought out the colors.", user: pete)
p1.comments.create(body: "Wow! Look at that blue sky!", user: tom)
p1.comments.create(body: "This is a really great photo. Well done.", user: frank)
p1.comments.create(body: "Fantastic work! This photo makes me miss New York.", user: alan)
