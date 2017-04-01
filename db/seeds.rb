# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trip1 = Trip.create(location: "Japan", time_span: "November 2015", photo_url: "https://scontent-ord1-1.xx.fbcdn.net/v/t1.0-9/12310536_10104182767836578_3131895657167659836_n.jpg?oh=e37d66583f21f895d38a769a3ff51c38&oe=596A6E48")

trip2 = Trip.create(location: "Turkey", time_span: "June 2010", photo_url:"https://scontent-ord1-1.xx.fbcdn.net/v/t1.0-9/1915988_928045597078_3862487_n.jpg?oh=42b4a2617160ad6e161c870b0da0c15a&oe=5950DB99")

activity1 = Activity.create(date: " 11/30/15", title: "Studio Ghibli Tour", description: "The Ghibli Museum is a museum showcasing the work of the Japanese animation studio Studio Ghibli. It is located in Inokashira Park in Mitaka, a western city of Tokyo, Japan. " photo_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/12345554_10104182809068948_3576561092808878137_n.jpg?oh=85b7f57634b47b8d16d8f1a5b1e22677&oe=599920EB")
