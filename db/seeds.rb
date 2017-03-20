# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'tin@sdc.com'
user.password = 'GSupremeWarmAndFuzziesCL'
user.password_confirmation = 'GSupremeWarmAndFuzziesCL'
user.role = 'system_admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'sleight@sdc.com'
user.password = 'IOEnergyDrinkTyrantLobsters8A'
user.password_confirmation = 'IOEnergyDrinkTyrantLobsters8A'
user.role = 'system_admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'minion1@sdc.com'
user.password = 'minion1'
user.password_confirmation = 'minion1'
user.role = 'tcf_admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'minion2@sdc.com'
user.password = 'minion2'
user.password_confirmation = 'minion2'
user.role = 'tcf_admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'minion3@sdc.com'
user.password = 'minion3'
user.password_confirmation = 'minion3'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'minion4@sdc.com'
user.password = 'minion4'
user.password_confirmation = 'minion4'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'minion5@sdc.com'
user.password = 'minion5'
user.password_confirmation = 'minion5'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'minion6@sdc.com'
user.password = 'minion6'
user.password_confirmation = 'minion6'
user.role = 'candidate'
user.skip_confirmation!
user.save!

AllignmentType.create(allignment_type: 'employee')
AllignmentType.create(allignment_type: 'contractor')
AllignmentType.create(allignment_type: 'training_center')

Candidate.create(email: 'tin@sdc.com', first_name: 'Hamburger', last_name: 'Steak')
Candidate.create(email: 'minion5@sdc.com', first_name: 'minion', last_name: '5')

CourseType.create([{course_type: 'BLS'},{course_type: 'HS'}, {course_type: 'ACLS'}, {course_type: 'PALS'}])

Course.create(course_type_id: CourseType.where(course_type: 'BLS').first.id,
              course_start_date: DateTime.now.to_date,
              course_address: 'That rock by the third crater',
              course_city: 'Mare Serenitatis',
              state: 'N/A',
              country: 'N/A',
              course_zipcode: 'N/A')
Course.create(course_type_id: CourseType.where(course_type: 'HS').first.id,
              course_start_date: DateTime.now.to_date,
              course_address: 'That rock by the fourth crater',
              course_city: 'Mare Serenitatis',
              state: 'N/A',
              country: 'N/A',
              course_zipcode: 'N/A')
Course.create(course_type_id: CourseType.where(course_type: 'ACLS').first.id,
              course_start_date: DateTime.now.to_date,
              course_address: 'By the southern outer rim',
              course_city: 'Mare Serenitatis',
              state: 'N/A',
              country: 'N/A',
              course_zipcode: 'N/A')
Course.create(course_type_id: CourseType.where(course_type: 'BLS').first.id,
              course_start_date: DateTime.now.to_date,
              course_address: 'By the highest peak',
              course_city: 'Mare Serenitatis',
              state: 'N/A',
              country: 'N/A',
              course_zipcode: 'N/A')

TrainingCenter.create(training_center_name: 'Therapeutical Professionals',
                      primary_contact: 'Mary Turner',
                      phone: 'lemonade',
                      email: 'lemmings@lemonade.com')


TrainingCenter.create(training_center_name: 'MSM Training',
                      primary_contact: 'The Martian',
                      phone: 'N/A',
                      email: 'martian@moon.com')
