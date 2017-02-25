# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'tin@sdc.com'
user.password = 'GSupremeBunnyOverlordCL'
user.password_confirmation = 'GSupremeBunnyOverlordCL'
user.role = 'admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'minion@sdc.com'
user.password = 'minion1'
user.password_confirmation = 'minion1'
user.role = 'candidate'
user.skip_confirmation!
user.save!
