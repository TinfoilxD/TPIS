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

# Daniels changes
# new data

# 5 Candidates
user = User.new
user.email = 'jessiek@gmail.com'
user.password = 'pancakesandfl0wers'
user.password_confirmation = 'pancakesandfl0wers'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'sarahDJ111@gmail.com'
user.password = 'aspartameisb4d'
user.password_confirmation = 'aspartameisb4d'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'davjo333@yahoo.com'
user.password = 'jacques3133'
user.password_confirmation = 'jacques3133'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'sissymissy55@hotmail.com'
user.password = 'jessesgirl809'
user.password_confirmation = 'jessesgirl809'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'alliecat5050@aol.com'
user.password = 'nerdintheh3rd'
user.password_confirmation = 'nerdintheh3rd'
user.role = 'candidate'
user.skip_confirmation!
user.save!




AllignmentType.create(allignment_type: 'employee')
AllignmentType.create(allignment_type: 'contractor')
AllignmentType.create(allignment_type: 'training_center')

# Daniels Candidates
Candidate.create(email:'jessiek@gmail.com',first_name: 'Jessie' , last_name: 'Klein', address: '3010 Lake St' , phone: '713-555-2038' ,  state: 'Texas' , zipcode: '77098' , country: 'United States' , occupation: 'Massage Therapist' , allignment_type_id: '1')
Candidate.create(email:'sarahDJ111@gmail.com' ,first_name: 'Sarah' , last_name:'Johann'  , address: '111 Ellen' , phone: '832-555-2084'  , state: 'Texas' , zipcode: '77102' , country: 'United States' , occupation: 'Physical Trainer' , allignment_type_id: '2')
Candidate.create(email:'davjo333@yahoo.com'  ,first_name: 'David' , last_name: 'Jacques' , address: '1030 Alabama St' , phone: '832-555-3020' , fax: '281-201-2929' , state: 'Texas' , zipcode: '77084' , country: 'United States' , occupation: 'Masseuse' , allignment_type_id: '1')
Candidate.create(email:'sissymissy55@hotmail.com' ,first_name: 'Michelle' , last_name: 'Sasser' , address: '2 Kings Way'  , phone: '281-555-2010' , state: 'Texas', zipcode: '77406' , country: 'United States' , occupation: 'Masseuse' , allignment_type_id: '2')
Candidate.create(email:'alliecat5050@aol.com', first_name: 'Allison', last_name: 'Castilliano', address: '1500 Richmond Ave', phone: '832-555-3200', state:'Texas', zipcode: '77006', country: 'United States', occupation: 'PT' , allignment_type_id: '3')
# Old
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
