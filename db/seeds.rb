# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 5.times do |i|
#     Product.create(name: "Product #{i+1}", price: rand(1..100))
#   end

# 5.times do |i|

    puts "🦸 Seeding Heroes"
    Hero.create!(name: Faker::Name.name, super_name: Faker::Superhero.name)
    Hero.create!(name: Faker::Name.name, super_name: Faker::Superhero.name)
    Hero.create!(name: Faker::Name.name, super_name: Faker::Superhero.name)
    Hero.create!(name: Faker::Name.name, super_name: Faker::Superhero.name)
    Hero.create!(name: Faker::Name.name, super_name: Faker::Superhero.name)
    
    # Faker::Superhero.prefix
    puts "💪 Seeding powers"
    Power.create!(name: Faker::Superhero.prefix, description: Faker::Superhero.descriptor)
    Power.create!(name: Faker::Superhero.prefix, description: Faker::Superhero.descriptor)
    Power.create!(name: Faker::Superhero.prefix, description: Faker::Superhero.descriptor)
    Power.create!(name: Faker::Superhero.prefix, description: Faker::Superhero.descriptor)
    Power.create!(name: Faker::Superhero.prefix, description: Faker::Superhero.descriptor)
    
    # 'Strong','Weak','Average'
    puts "🌱 Seeding Hero Powers"
    HeroPower.create!( hero_id: 1, power_id: 1, strength: "Strong")
    HeroPower.create!( hero_id: 2, power_id: 2, strength: "Weak")
    HeroPower.create!( hero_id: 3, power_id: 3, strength: "Average")
    HeroPower.create!( hero_id: 4, power_id: 4, strength: "Strong")
    HeroPower.create!( hero_id: 5, power_id: 5, strength: "Weak")

# end