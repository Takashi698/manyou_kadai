# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
name = "alien"
email = "a@a.com"
password = "111111"
User.create!(name: name,
             email: email,
             password: password,
             password_confirmation: password,
             admin: true
             )

Label.create!(
  [
    {name: 'Zelda'},
    {name: 'Final Fantasy'},
    {name: 'Dragon Quest'},
    {name: 'Splatoon'},
    {name: 'Bullet Voyage'},
    {name: 'Among Us'},
    {name: 'Mini Metro'},
    {name: 'Mario Odessay'},
    {name: 'Mario World'},
    {name: 'Star Ocean'}
  ]
)