# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clear existing data
Category.destroy_all
Video.destroy_all

# Create some categories
categories = Category.create!([
  { name: 'Music' },
  { name: 'Education' },
  { name: 'Entertainment' },
  { name: 'Technology' }
])

# Create some videos linked to the categories
Video.create!([
  { title: 'How to Play Guitar', categories_id: categories[0].id },
  { title: 'Ruby on Rails Tutorial', categories_id: categories[1].id },
  { title: 'Comedy Sketch', categories_id: categories[2].id },
  { title: 'The Future of AI', categories_id: categories[3].id }
])

puts "Seeding completed successfully!"
