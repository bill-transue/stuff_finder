# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

yahoo = User.create(email: 'yahoo@yahoo.com',
                    password: "password",
                    password_confirmation: "password")

google = User.create(email: 'google@google.com',
                     password: "alphabet",
                     password_confirmation: "alphabet")

categories = Category.create([{name: "vehicles"},
                              {name: "books"},
                              {name: "keyboards"}])

Classified.create(title: "Old Car",
                  description: "300K miles, manual everything, think Flintstones",
                  price: 5,
                  category: categories.first,
                  user: yahoo)

Classified.create(title: "Car",
                  description: "I've decided to start using the metro. going cheap",
                  price: 3500,
                  category: categories.first,
                  user: google)

Classified.create(title: "New Car",
                  description: "300 miles, automatic everything, think Jetsons",
                  price: 35000,
                  category: categories.first,
                  user: google)

Classified.create(title: "Essential BEWD Slides",
                   description: "For those days you just don't want to use the internet",
                   price: 25.50,
                   category: categories.second,
                   user: google)

Classified.create(title: "Keyboard.io",
                  description: "check it out at http://shop.keyboard.io/",
                  price: 350,
                  category: categories.third,
                  user: yahoo)

Classified.create(title: "Kings Assembly",
                  description: "for those hipster keyboarders. http://solidartlabs.com/",
                  price: 600,
                  category: categories.third,
                  user: yahoo)

Classified.create(title: "Code Keyboard",
                  description: "lets get back to the basics. http://codekeyboards.com/",
                  price: 150,
                  category: categories.third,
                  user: yahoo)

Classified.create(title: "Ergodox",
                  description: "Unassembled, ready for someone with the know how, time, and tools. http://ergodox.org/",
                  price: 250,
                  category: categories.third,
                  user: yahoo)

Classified.create(title: "Atreus Keyboard",
                  description: "yeah, I'm a keyboard nerd. http://atreus.technomancy.us/",
                  price: 200,
                  category: categories.third,
                  user: yahoo)
