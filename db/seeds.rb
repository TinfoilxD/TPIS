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

#-----------------System Admin accounts (Josh)-------------------------
user = User.new
user.email = 'freeman.twsami@therapeuticprofessionals.com'
user.password = 'hkhihhhohi3643#'
user.password_confirmation = 'hkhihhhohi3643#'
user.role = 'system_admin'
user.skip_confirmation!
user.save!
#------------------End creating System Admin accounts-----------------

#-----------------TCF Admin accounts (Josh)-------------------------
user = User.new
user.email = 'cherri.hudgins@therapeuticprofessionals.com'
user.password = 'neverstop86'
user.password_confirmation = 'neverstop86'
user.role = 'tcf_admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'jessica.jones@therapeuticprofessionals.com'
user.password = 'neverstop86'
user.password_confirmation = 'neverstop86'
user.role = 'tcf_admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'rhema.yale@therapeuticprofessionals.com'
user.password = 'fireburd34#'
user.password_confirmation = 'fireburd34#'
user.role = 'tcf_admin'
user.skip_confirmation!
user.save!
#------------------End creating TCF Admin accounts-----------------

#------------------TCF accounts (Josh)-----------------------------
user = User.new
user.email = 'ray.smith@therapeuticprofessionals.com'
user.password = 'swingryt45'
user.password_confirmation = 'swingryt45'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'luke.cage@slb.com'
user.password = 'superstrong783455'
user.password_confirmation = 'superstrong783455'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'yumi.yui@therapeuticprofessionals.com'
user.password = 'wogejwo455'
user.password_confirmation = 'wogejwo455'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'ben.john@tlc.com'
user.password = 'gjsogji3533'
user.password_confirmation = 'gjsogji3533'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'mike.jones@therapeuticprofessionals.com'
user.password = 'whomikejones325325523'
user.password_confirmation = 'whomikejones325325523'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'larry.burd@therapeuticprofessionals.com'
user.password = 'ojsggsoig4344'
user.password_confirmation = 'ojsggsoig4344'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'emanda.burns@therapeuticprofessionals.com'
user.password = 'sjowjgewg5232'
user.password_confirmation = 'sjowjgewg5232'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'tiffany.royal@therapeuticprofessionals.com'
user.password = 'ewoijgioj432399'
user.password_confirmation = 'ewoijgioj432399'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'haley.ball@therapeuticprofessionals.com'
user.password = 'bswojgjoi325525'
user.password_confirmation = 'bswojgjoi325525'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'quenn.latifah@therapeuticprofessionals.com'
user.password = 'ttwhwosijgixgg65'
user.password_confirmation = 'ttwhwosijgixgg65'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'tim.holloway@therapeuticprofessionals.com'
user.password = 'ojiwhxklwoi352'
user.password_confirmation = 'ojiwhxklwoi352'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'emely.wang@bltpa.com'
user.password = 'wgoiwojg34535'
user.password_confirmation = 'wgoiwojg34535'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'terry.cruz@cruzrb.com'
user.password = 'xgiohisjgja43532'
user.password_confirmation = 'xgiohisjgja43532'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'samantha.curry@therapeuticprofessionals.com'
user.password = 'gsiopqjogj83838'
user.password_confirmation = 'gsiopqjogj83838'
user.role = 'tcf'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'damon.green@therapeuticprofessionals.com'
user.password = 'nieiwngoinw32425'
user.password_confirmation = 'nieiwngoinw32425'
user.role = 'tcf'
user.skip_confirmation!
user.save!
#------------------End creating TCF accounts-----------------

AllignmentType.create(allignment_type: 'employee')
AllignmentType.create(allignment_type: 'contractor')
AllignmentType.create(allignment_type: 'training_center')

Candidate.create(email: 'tin@sdc.com', first_name: 'Hamburger', last_name: 'Steak')
Candidate.create(email: 'minion5@sdc.com', first_name: 'minion', last_name: '5')
Candidate.create(email: '', first_name: 'Mike', last_name: 'Jones')
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
