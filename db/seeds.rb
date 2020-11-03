# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Menu.destroy_all
menu = Menu.create!({title: "Lunch"})

items = [
    {item: "Tea", price: 3.50, quantity: 1, menus: [menu]},
    {item: "Tea", price: 3.50, quantity: 1, menus: [menu]},
    {item: "Scone", price: 5.00, quantity: 1, menus: [menu]},
    {item: "Donut", price: 2.50, quantity: 1, menus: [menu]}
]

MenuItem.destroy_all

MenuItem.create!(items)





# MenuItem.create(item: "Tea", price: 3.50, quantity: 1)
# MenuItem.create(item: "Latte", price: 4.00, quantity: 1)
# MenuItem.create(item: "Scone", price: 5.00, quantity: 1)
# MenuItem.create(item: "Donut", price: 2.50, quantity: 1)