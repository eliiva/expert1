# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.reset_pk_sequence
User.create([{name:'Aksana', email:'miska_mmg@mail.ru', password: "qwerty", password_confirmation: "qwerty"},
             {name: "Elizaveta", email: "liza_veta1313@mail.ru", password: "qwerty", password_confirmation: "qwerty"},
             {name:'Natalya', email:'nata_ivanova@mail.ru', password: "qwerty", password_confirmation: "qwerty"},
             {name:'Anna', email:'lanfir23@mail.ru', password: "qwerty", password_confirmation: "qwerty"}])

Image.delete_all
Image.reset_pk_sequence
Image.create([{name:'panda', file:'panda.jpg', theme_id:1},
              {name:'racoon', file:'racoon.jpg', theme_id:1},
              {name:'owl', file:'owl.jpg', theme_id:1},
              {name:'fox', file:'fox.jpg', theme_id:1},
              {name:'sheep', file:'sheep.jpg', theme_id:1},
              {name:'cat', file:'cat.jpg', theme_id:1},
              {name:'fluorite', file:'fluorite.jpg', theme_id:2},
              {name:'quartz', file:'quartz.jpg', theme_id:2},
              {name:'granat', file:'granat.jpg', theme_id:2},
              {name:'banana', file:'banana.jpg', theme_id:3},
              {name:'plum', file:'plum.jpg', theme_id:3},
              {name:'grape', file:'grape.jpg', theme_id:3},
              {name:'dragonfruit', file:'dragonfruit.jpg', theme_id:3}])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([{name:'animals'},
             {name:'minerals'},
              {name:'fruit'}])