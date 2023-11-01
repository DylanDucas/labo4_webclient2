require 'faker'
Faker::Config.locale = 'fr-CA'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ADMINS = [1]
(1..10).each do |i|
    User.create(email: "#{i}@gmail.com",password:"#{i}" * 6, is_admin: (ADMINS.include? i))
end

(1..10).each do |i|
Business.create(name: Faker::Restaurant.name, 
                description: Faker::Restaurant.description, 
                phone: Faker::PhoneNumber.phone_number, 
                email: Faker::Internet.safe_email, 
                site_web: Faker::Internet.url, 
                user_id: rand(1..10),
                menus_attributes: [
                    {
                        title: "Fin de semaine",
                        menus_attributes: [
                            {   
                                title: "Dejeuner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Diner", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            },
                            {   title: "Souper", 
                                items_attributes: [
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                            {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                            ]
                            }
                        ]
                    }
                ]
            )
end

