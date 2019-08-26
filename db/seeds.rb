# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Task.destroy_all

Task.create(activity: "Do the laundry", description: "Everything's dirty please clean it")
Task.create(activity: "Cook dinner", description: "I'm hungry please hurry")
Task.create(activity: "Put on clothes", description: "It's cold outside don't freeze")
Task.create(activity: "Take out the garbage", description: "It smells.")
Task.create(activity: "Walk the dog", description: "He's 'bouta poop hurry")

User.create(name: 'Kevin', location: 'US', photo: 'img/kevin.jpg')
User.create(name: 'Dean', location: 'Canada', photo: 'img/dean.gif')
