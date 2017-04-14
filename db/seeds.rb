# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# States
State.create([
                 { state_name: 'Alaska', state_code: 'AK' },
                 { state_name: 'Alabama', state_code: 'AL' },
                 { state_name: 'Arkansas', state_code: 'AR' },
                 { state_name: 'Arizona', state_code: 'AZ' },
                 { state_name: 'California', state_code: 'CA' },
                 { state_name: 'Colorado', state_code: 'CO' },
                 { state_name: 'Connecticut', state_code: 'CT' },
                 { state_name: 'District of Columbia', state_code: 'DC' },
                 { state_name: 'Delaware', state_code: 'DE' },
                 { state_name: 'Florida', state_code: 'FL' },
                 { state_name: 'Georgia', state_code: 'GA' },
                 { state_name: 'Hawaii', state_code: 'HI' },
                 { state_name: 'Iowa', state_code: 'IA' },
                 { state_name: 'Idaho', state_code: 'ID' },
                 { state_name: 'Illinois', state_code: 'IL' },
                 { state_name: 'Indiana', state_code: 'IN' },
                 { state_name: 'Kansas', state_code: 'KS' },
                 { state_name: 'Kentucky', state_code: 'KY' },
                 { state_name: 'Louisiana', state_code: 'LA' },
                 { state_name: 'Massachusetts', state_code: 'MA' },
                 { state_name: 'Maryland', state_code: 'MD' },
                 { state_name: 'Maine', state_code: 'ME' },
                 { state_name: 'Michigan', state_code: 'MI' },
                 { state_name: 'Minnesota', state_code: 'MN' },
                 { state_name: 'Missouri', state_code: 'MO' },
                 { state_name: 'Mississippi', state_code: 'MS' },
                 { state_name: 'Montana', state_code: 'MT' },
                 { state_name: 'North Carolina', state_code: 'NC' },
                 { state_name: 'North Dakota', state_code: 'ND' },
                 { state_name: 'Nebraska', state_code: 'NE' },
                 { state_name: 'New Hampshire', state_code: 'NH' },
                 { state_name: 'New Jersey', state_code: 'NJ' },
                 { state_name: 'New Mexico', state_code: 'NM' },
                 { state_name: 'Nevada', state_code: 'NV' },
                 { state_name: 'New York', state_code: 'NY' },
                 { state_name: 'Ohio', state_code: 'OH' },
                 { state_name: 'Oklahoma', state_code: 'OK' },
                 { state_name: 'Oregon', state_code: 'OR' },
                 { state_name: 'Pennsylvania', state_code: 'PA' },
                 { state_name: 'Puerto Rico', state_code: 'PR' },
                 { state_name: 'Rhode Island', state_code: 'RI' },
                 { state_name: 'South Carolina', state_code: 'SC' },
                 { state_name: 'South Dakota', state_code: 'SD' },
                 { state_name: 'Tennessee', state_code: 'TN' },
                 { state_name: 'Texas', state_code: 'TX' },
                 { state_name: 'Utah', state_code: 'UT' },
                 { state_name: 'Virginia', state_code: 'VA' },
                 { state_name: 'Vermont', state_code: 'VT' },
                 { state_name: 'Washington', state_code: 'WA' },
                 { state_name: 'Wisconsin', state_code: 'WI' },
                 { state_name: 'West Virginia', state_code: 'WV' },
                 { state_name: 'Wyoming', state_code: 'WY' }
             ])


user = User.new
user.email = 'tin@sdc.com'
user.password = 'GSupremeWarmAndFuzziesCL'
user.password_confirmation = 'GSupremeWarmAndFuzziesCL'
user.role = 'system_admin'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'sdc4375@gmail.com'
user.password = 'LowdNagxlParntT5AI'
user.password_confirmation = 'LowdNagxlParntT5AI'
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

user = User.new
user.email = 'jessiek@gmail.com'
user.password = 'pancakesandfl0wers'
user.password_confirmation = 'pancakesandfl0wers'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'freeman17.twsami@therapeuticprofessionals.com'
user.password = 'hkhihhhohi3643#'
user.password_confirmation = 'hkhihhhohi3643#'
user.role = 'system_admin'
user.skip_confirmation!
user.save!

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
user.email = 'sarahDJ111@gmail.com'
user.password = 'aspartameisb4d'
user.password_confirmation = 'aspartameisb4d'
user.role = 'candidate'
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
user.email = 'davjo333@yahoo.com'
user.password = 'jacques3133'
user.password_confirmation = 'jacques3133'
user.role = 'candidate'
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
user.email = 'sissymissy55@hotmail.com'
user.password = 'jessesgirl809'
user.password_confirmation = 'jessesgirl809'
user.role = 'candidate'
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
user.email = 'alliecat5050@aol.com'
user.password = 'nerdintheh3rd'
user.password_confirmation = 'nerdintheh3rd'
user.role = 'candidate'
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

# 2nd round of candidate log-ins
# 1 - 5
user = User.new
user.email = 'cpatino66@gmail.com'
user.password = 'bruja321'
user.password_confirmation = 'bruja321'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'JSimms@yahoo.com'
user.password = 'slammajamma202'
user.password_confirmation = 'slammajamma202'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'acarrera6@yahoo.com'
user.password = 'areallybigsalad'
user.password_confirmation = 'areallybigsalad'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'alcapont45@gmail.com'
user.password = 'obviouslyastrongpassword'
user.password_confirmation = 'obviouslyastrongpassword'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'candlemandell@gmail.com'
user.password = 'bigandsmallcandles'
user.password_confirmation = 'bigandsmallcandles'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# 6-10
user = User.new
user.email = 'sunrisegoddess@yahoo.com'
user.password = 'downwarddog11322'
user.password_confirmation = 'downwarddog11322'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'DanceEmiliaDance@aol.com'
user.password = 'JonnyIsMyHubby111'
user.password_confirmation = 'JonnyIsMyHubby111'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'pressurepointprince@yahoo.com'
user.password = 'divinefingers312'
user.password_confirmation = 'divinefingers312'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'yogamaster65@gmail.com'
user.password = 'yogamaster56'
user.password_confirmation = 'yogamaster56'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'conventionalking@gmail.com'
user.password = 'justwingingit1'
user.password_confirmation = 'justwingingit1'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# 11-15
user = User.new
user.email = 'scorpioking@yahoo.com'
user.password = 'everyonelies'
user.password_confirmation = 'everyonelies'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'amIevenreal@gmail.com'
user.password = 'bringmepizzaplz111'
user.password_confirmation = 'bringmepizzaplz111'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# user = User.new
# user.email = 'candycandice@aol.com'
# user.password = 'deliciousdiamonds'
# user.password_confirmation = 'delicioussdiamonds'
# user.role = 'candidate'
# user.skip_confirmation!
# user.save!

user = User.new
user.email = 'alexiag11@gmail.com'
user.password = 'th4tw4sfunny'
user.password_confirmation = 'th4tw4sfunny'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'RichardZ312@fmail.com'
user.password = 'passwordforTPIS1111'
user.password_confirmation = 'passwordforTPIS1111'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# 16-20
user = User.new
user.email = 'SandraEsp333@gmail.com'
user.password = '7dogsin7trees'
user.password_confirmation = '7dogsin7trees'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'ShandyCheeks@gmail.com'
user.password = 'unoriginalpassword'
user.password_confirmation = 'unoriginalpassword'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'waxpoetic42@gmail.com'
user.password = 'windows7isbest'
user.password_confirmation = 'windows7isbest'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'XtremeGus@yahoo.com'
user.password = 'TinFoil777'
user.password_confirmation = 'TinFoil777'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'YogaChris@gmail.com'
user.password = 'shewillcomeback'
user.password_confirmation = 'shewillcomeback'
user.role = 'candidate'
user.skip_confirmation!
user.save!

#21-25
user = User.new
user.email = 'HolyHolly@gmail.com'
user.password = 'allthingarepossible'
user.password_confirmation = 'allthingarepossible'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'iloveyoga333@yahoo.com'
user.password = 'yogasaveslives123'
user.password_confirmation = 'yogasaveslives123'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'marksand@gmail.com'
user.password = 'lotsofsand'
user.password_confirmation = 'lotsofsand'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'bestinthewest12321@aol.com'
user.password = 'spurs338'
user.password_confirmation = 'spurs338'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'diariesofaCoco@aol.com'
user.password = 'cococola111'
user.password_confirmation = 'cococola111'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# Begin Josh Accounts

#26-30
user = User.new
user.email = 'wayne.johnson@yahoo.com'
user.password = 'ewggsojiw8935'
user.password_confirmation = 'ewggsojiw8935'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'raygun25@yahoo.com'
user.password = 'osgwoeijg83843'
user.password_confirmation = 'osgwoeijg83843'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'topdog24245@yahoo.com'
user.password = 'gwogeijgie3949'
user.password_confirmation = 'gwogeijgie3949'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'yumi.yswami@yahoo.com'
user.password = 'ssgeioxn534'
user.password_confirmation = 'ssgeioxn534'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'diamondmerrs@yahoo.com'
user.password = 'wojegboxji63#'
user.password_confirmation = 'wojegboxji63#'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# 31-35
user = User.new
user.email = 'lindaramos@yahoo.com'
user.password = 'bodjoiajbi643'
user.password_confirmation = 'bodjoiajbi643'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'carrieturner@yahoo.com'
user.password = 'jbiwkkgk8372'
user.password_confirmation = 'jbiwkkgk8372'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'izzesaturn@yahoo.com'
user.password = 'lgwkbgwge28832'
user.password_confirmation = 'lgwkbgwge28832'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'yoland.adams@gmail.com'
user.password = 'owskiwbow9983'
user.password_confirmation = 'owskiwbow9983'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'stacie.hamiltion@gmail.com'
user.password = 'startedfromthebottom42234#'
user.password_confirmation = 'startedfromthebottom42234#'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# 36-40
user = User.new
user.email = 'vannessa.adams@gmail.com'
user.password = 'gisowkwk84'
user.password_confirmation = 'gisowkwk84'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'rachel.ewagami@gmail.com'
user.password = 'nweiojk6232'
user.password_confirmation = 'nweiojk6232'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'freddiegoldmen@hotmail.com'
user.password = 'xeiogksl9483'
user.password_confirmation = 'xeiogksl9483'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'josh.lemon@hotmail.com'
user.password = 'kewoijskg9323'
user.password_confirmation = 'kewoijskg9323'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'petricia.sinclair@yahoo.com'
user.password = 'livelifewetet423'
user.password_confirmation = 'livelifewetet423'
user.role = 'candidate'
user.skip_confirmation!
user.save!

# 41-45
user = User.new
user.email = 'haleymcduff@yahoo.com'
user.password = 'ojwgijiwjiwj03042'
user.password_confirmation = 'ojwgijiwjiwj03042'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'gregory.banes@gmail.com'
user.password = 'bbiojwen929@'
user.password_confirmation = 'bbiojwen929@'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'tamma.negan@gmail.com'
user.password = 'g4wjpohk434'
user.password_confirmation = 'g4wjpohk434'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'alicia.freeman@gmail.com'
user.password = 'pweggooej423$'
user.password_confirmation = 'pweggooej423$'
user.role = 'candidate'
user.skip_confirmation!
user.save!

user = User.new
user.email = 'umi.omigowa@gmail.com'
user.password = 'iiwkwkwlke5034#'
user.password_confirmation = 'iiwkwkwlke5034#'
user.role = 'candidate'
user.skip_confirmation!
user.save!

#========== End User Accounts ==========#

# original Alignment types
AlignmentType.create(alignment_type: 'Employee')
AlignmentType.create(alignment_type: 'Independent Contractor')
AlignmentType.create(alignment_type: 'Training Center')
AlignmentType.create(alignment_type: 'Contract Employee')



# Begin Candidate Profiles

# Daniels Candidates
c1 = Candidate.create(email: 'jessiek@gmail.com', first_name: 'Jessie', last_name: 'Klein', address: '3010 Lake St' , phone: '713-555-2038' ,  state_id: 45 , zipcode: '77098' ,  occupation: 'Massage Therapist' , alignment_type_id: '1')
c2 = Candidate.create(email: 'sarahDJ111@gmail.com', first_name: 'Sarah', last_name:'Johann'  , address: '111 Ellen' , phone: '832-555-2084'  , state_id: 45 , zipcode: '77102' ,  occupation: 'Physical Trainer' , alignment_type_id: '2')
c3 = Candidate.create(email: 'davjo333@yahoo.com' , first_name: 'David', last_name: 'Jacques' , address: '1030 Alabama St' , phone: '832-555-3020' , fax: '281-201-2929' , state_id: 45, zipcode: '77084' ,  occupation: 'Masseuse' , alignment_type_id: '1')
c4 = Candidate.create(email: 'sissymissy55@hotmail.com', first_name: 'Michelle', last_name: 'Sasser' , address: '2 Kings Way'  , phone: '281-555-2010' , state_id: 45, zipcode: '77406' ,  occupation: 'Masseuse' , alignment_type_id: '2')
c5 = Candidate.create(email: 'alliecat5050@aol.com', first_name: 'Allison', last_name: 'Castilliano', address: '1500 Richmond Ave', phone: '832-555-3200', state_id:45, zipcode: '77006',  occupation: 'PT' , alignment_type_id: '3')
# 2nd round

# 1-5
c6 = Candidate.create(email:'cpatino66@gmail.com', first_name: 'Chrissy', last_name: 'Patino', address: '1135 Terrel Hills Rd', phone: '210-555-8848', state_id:45, zipcode: '78244',  occupation: 'Physical Therapy' , alignment_type_id: '1')
c7 = Candidate.create(email:'JSimms@yahoo.com', first_name: 'Jonathan', last_name: 'Simmons', address: '1153 Densel Rd', phone: '210-555-7776', state_id:45, zipcode: '78111',  occupation: 'Masseuse' , alignment_type_id: '1')
c8 = Candidate.create(email:'acarrera6@yahoo.com', first_name: 'Alonzo', last_name: 'Carrera', address: '533 Akali Rd', phone: '210-555-2101', state_id:45, zipcode: '78211',  occupation: 'BLS' , alignment_type_id: '1')
c9 = Candidate.create(email:'alcapont45@gmail.com', first_name: 'Alex', last_name: 'Capont', address: '14003 Richmond Ave', phone: '832-555-6030', state_id:45, zipcode: '77030',  occupation: 'PT' , alignment_type_id: '1')
c10 = Candidate.create(email:'candlemandell@gmail.com', first_name: 'Joseph', last_name: 'Mandell', address: '858 Crepe St', phone: '281-555-2011', state_id:45, zipcode: '77401',  occupation: 'Masseuse' , alignment_type_id: '1')

# 6-10
Candidate.create(email:'sunrisegoddess@yahoo.com', first_name: 'Sarah', last_name: 'Jones', address: '11482 Sunkissed Rd', phone: '713-555-5030', state_id:45, zipcode: '79201',  occupation: 'none' , alignment_type_id: '1')
Candidate.create(email:'DanceEmiliaDance@aol.com', first_name: 'Emilia', last_name: 'Cortez', address: '6 Kings Manor', phone: '210-555-1213', state_id:45, zipcode: '77010',  occupation: 'Nurse' , alignment_type_id: '1')
Candidate.create(email:'pressurepointprince@yahoo.com', first_name: 'Blaivin', last_name: 'DiMassio', address: '4401 Wheeler St.', phone: '832-555-2111', state_id:45, zipcode: '77004',  occupation: 'Masseuse' , alignment_type_id: '1')
Candidate.create(email:'yogamaster65@gmail.com', first_name: 'Vincent', last_name: 'LeEngardien', address: '123 Cullen', phone: '832-555-6640', state_id:45, zipcode: '76950',  occupation: 'Yoga Instructor' , alignment_type_id: '1')
Candidate.create(email:'conventionalking@gmail.com', first_name: 'Julio', last_name: 'Villanueva', address: '987 Spanish Trail', phone: '832-555-3333', state_id:45, zipcode: '77099',  occupation: 'Healer' , alignment_type_id: '1')

# 11-15
Candidate.create(email:'scorpioking@yahoo.com', first_name: 'Kevin', last_name: 'Sucho', address: '111 Dumax Rd', phone: '713-555-1100', state_id:45, zipcode: '77055',  occupation: 'Nurse' , alignment_type_id: '1')
Candidate.create(email:'amIevenreal@gmail.com', first_name: 'Amelia', last_name: 'Emiliano', address: '420 Westheimer', phone: '832-555-6666', state_id:45, zipcode: '77009',  occupation: 'Masseuse' , alignment_type_id: '1')
Candidate.create(email:'candycandice@aol.com', first_name: 'Candice', last_name: 'Candy', address: '2011 Sugar Ln.', phone: '832-555-1311', state_id:45, zipcode: '77095',  occupation: 'Yoga Instructor' , alignment_type_id: '1')
Candidate.create(email:'alexiag11@gmail.com', first_name: 'Alexia', last_name: 'Guadiano', address: '880 Richgirl Rd', phone: '713-555-5666', state_id:45, zipcode: '77001',  occupation: 'Nurse' , alignment_type_id: '1')
Candidate.create(email:'RichardZ312@fmail.com', first_name: 'Richard', last_name: 'Zambrano', address: '440 Diggler Rd', phone: '281-555-4020', state_id:45, zipcode: '77501',  occupation: 'Nurse' , alignment_type_id: '1')

# 16-20
Candidate.create(email:'SandraEsp333@gmail.com', first_name: 'Sandra', last_name: 'Espinoza', address: '301 Panick Rd', phone: '281-555-9919', state_id:45, zipcode: '77400',  occupation: 'Masseuse' , alignment_type_id: '1')
Candidate.create(email:'ShandyCheeks@gmail.com', first_name: 'Shaundra', last_name: 'Smith', address: '33 Elgin Rd.', phone: '713-555-2221', state_id:45, zipcode: '77003',  occupation: 'Nurse' , alignment_type_id: '1')
Candidate.create(email:'waxpoetic42@gmail.com', first_name: 'Timothy', last_name: 'Tactin', address: '14002 Skramz Ave.', phone: '713-555-9499', state_id:45, zipcode: '77010',  occupation: 'Secretary' , alignment_type_id: '1')
Candidate.create(email:'XtremeGus@yahoo.com', first_name: 'Gustavo', last_name: 'Sorola', address: '636 Congress Ave', phone: '713-555-5332', state_id:45, zipcode: '77099',  occupation: 'Cleric' , alignment_type_id: '1')
Candidate.create(email:'YogaChris@gmail.com', first_name: 'Christopher', last_name: 'Walz', address: '7005 Drive Road', phone: '832-555-3001', state_id:45, zipcode: '78405',  occupation: 'Masseuse' , alignment_type_id: '1')

# 21-25
Candidate.create(email:'HolyHolly@gmail.com', first_name: 'Holly', last_name: 'Hammond', address: '2224 Skillfold Dr.', phone: '832-555-2919', state_id:45, zipcode: '77402',  occupation: 'Nurse' , alignment_type_id: '1')
Candidate.create(email:'iloveyoga333@yahoo.com', first_name: 'Xavier', last_name: 'Cardenas', address: '539 Westscott Rd.', phone: '713-555-6642', state_id:45, zipcode: '78480',  occupation: 'Masseuse' , alignment_type_id: '1')
Candidate.create(email:'marksand@gmail.com', first_name: 'Markus', last_name: 'LaPorte', address: '9931 Barcelona Rd.', phone: '281-555-3311', state_id:45, zipcode: '77480',  occupation: 'Instructor' , alignment_type_id: '1')
Candidate.create(email:'bestinthewest12321@aol.com', first_name: 'Elizabeth', last_name: 'Zertuche', address: '5530 Quahog Dr.', phone: '713-555-2000', state_id:45, zipcode: '77004',  occupation: 'Nurse' , alignment_type_id: '1')
Candidate.create(email:'diariesofaCoco@aol.com', first_name: 'Coco', last_name: 'Diaz', address: '404 Error Rd.', phone: '281-555-5555', state_id:45, zipcode: '77010',  occupation: 'Masseuse' , alignment_type_id: '1')

# 26-30
Candidate.create(email: 'wayne.johnson@yahoo.com', first_name: 'Wayne' , last_name: 'Johnson', address: '3014 Neverland Lane', phone: '832-434-2535' ,  state_id: 45 , zipcode: '77204' ,  occupation: 'Physical Trainer' , alignment_type_id: '2')
Candidate.create(email: 'raygun25@yahoo.com', first_name: 'Ray' , last_name:'Gunnanham', address: '121 Sellen Road' , phone: '832-553-3257'  , state_id: 45 , zipcode: '77459' ,  occupation: 'Masseuse' , alignment_type_id: '1')
Candidate.create(email: 'topdog24245@yahoo.com', first_name: 'David', last_name: 'Hatchet', address: '1043 Given St' , phone: '832-543-3042' , fax: '281-241-2329' , state_id: 45 , zipcode: '77084' ,  occupation: 'Masseuse' , alignment_type_id: '1')
Candidate.create(email: 'yumi.yswami@yahoo.com', first_name: 'Yumi', last_name: 'Yswami', address: '231 Baley Court'  , phone: '281-545-2210' , state_id: 45, zipcode: '77406' ,  occupation: 'Massage Therapist' , alignment_type_id: '2')
Candidate.create(email: 'diamondmerrs@yahoo.com', first_name: 'Diamond', last_name: 'Merrs', address: '834 Lime Lane', phone: '832-555-64364', state_id:45, zipcode: '77459',  occupation: 'Nurse' , alignment_type_id: '2')

# 31-35
Candidate.create(email: 'lindaramos@yahoo.com', first_name: 'Linda', last_name: 'Ramos', address: '303 Viren St' , phone: '713-534-2034' ,  state_id: 45 , zipcode: '77048' ,  occupation: 'Massage Therapist' , alignment_type_id: '3')
Candidate.create(email: 'carrieturner@yahoo.com', first_name: 'Carrie' , last_name:'Turner'  , address: '777 Heaven Lane' , phone: '832-455-7084', state_id: 45 , zipcode: '77102' ,  occupation: 'Physical Trainer' , alignment_type_id: '3')
Candidate.create(email: 'izzesaturn@yahoo.com', first_name: 'Izze' , last_name: 'Turner' , address: '4574 Crane St' , phone: '832-554-5023' , fax: '281-243-2429' , state_id: 45 , zipcode: '77684' ,  occupation: 'Nurse' , alignment_type_id: '1')
Candidate.create(email: 'yoland.adams@gmail.com', first_name: 'Yoland' , last_name: 'Adams' , address: '2673 Ray Lane'  , phone: '281-455-2430' , state_id: 45, zipcode: '77423' ,  occupation: 'Massage Therapist' , alignment_type_id: '2')
Candidate.create(email: 'stacie.hamiltion@gmail.com', first_name: 'Stacie', last_name: 'Hamiltion', address: '542 Hamburger Lane', phone: '832-545-5304', state_id:45, zipcode: '77246',  occupation: 'Nurse' , alignment_type_id: '4')

# 36-40
Candidate.create(email: 'vannessa.adams@gmail.com', first_name: 'Vannessa' , last_name: 'Adams', address: '7437 Peoples Lane' , phone: '713-434-4038' ,  state_id: 45 , zipcode: '77698' ,  occupation: 'Massage Therapist' , alignment_type_id: '1')
Candidate.create(email: 'rachel.ewagami@gmail.com', first_name: 'Rachel' , last_name:'Ewagami'  , address: '643 Uma St' , phone: '832-355-6545'  , state_id: 45 , zipcode: '77402' ,  occupation: 'Physical Trainer' , alignment_type_id: '3')
Candidate.create(email: 'freddiegoldmen@hotmail.com', first_name: 'Freddie' , last_name: 'Goldmen' , address: '434 Mix Lane' , phone: '832-855-3320' , fax: '281-241-2949' , state_id: 45 , zipcode: '77002' ,  occupation: 'Masseuse' , alignment_type_id: '3')
Candidate.create(email: 'josh.lemon@hotmail.com', first_name: 'Josh' , last_name: 'Lemon' , address: '534 Rails St'  , phone: '281-655-2040' , state_id: 45, zipcode: '77506' ,  occupation: 'Masseuse' , alignment_type_id: '2')
Candidate.create(email: 'petricia.sinclair@yahoo.com', first_name: 'Petricia', last_name: 'Sinclair', address: '5236 Damon Road', phone: '832-553-4200', state_id:45, zipcode: '77206',  occupation: 'Nurse' , alignment_type_id: '3')

# 41-45
Candidate.create(email: 'haleymcduff@yahoo.com', first_name: 'Haley' , last_name: 'McDuff', address: '3053 Kirby Road' , phone: '713-545-2038' ,  state_id: 45 , zipcode: '77067' ,  occupation: 'Massage Therapist' , alignment_type_id: '1')
Candidate.create(email: 'gregory.banes@gmail.com', first_name: 'Gregory' , last_name:'Banes'  , address: '923 Hollow Lane' , phone: '832-932-2084'  , state_id: 45 , zipcode: '77102' ,  occupation: 'Nurse' , alignment_type_id: '4')
Candidate.create(email: 'tamma.negan@gmail.com', first_name: 'Tamma' , last_name: 'Negan' , address: '8325 Telephone Road' , phone: '832-623-3030' , fax: '281-934-2939' , state_id: 45 , zipcode: '77044' ,  occupation: 'Masseuse' , alignment_type_id: '1')
Candidate.create(email: 'alicia.freeman@gmail.com', first_name: 'Alicia' , last_name: 'Freeman' , address: '334 Emerald Road'  , phone: '281-435-2010' , state_id: 45, zipcode: '77436' ,  occupation: 'Nurse' , alignment_type_id: '2')
Candidate.create(email: 'umi.omigowa@gmail.com', first_name: 'Umi', last_name: 'Omigowa', address: '1504 Wale Road', phone: '832-345-3230', state_id:45, zipcode: '77406',  occupation: 'PT' , alignment_type_id: '3')


# Old
Candidate.create(email: 'tin@sdc.com', first_name: 'Hamburger', last_name: 'Steak', phone: '9999')
Candidate.create(email: 'minion5@sdc.com', first_name: 'minion', last_name: '5', phone: '8888')





CourseType.create([{course_type: 'BLS'},{course_type: 'HS'}, {course_type: 'ACLS'}, {course_type: 'PALS'}])


t1=TrainingCenter.create(training_center_name: 'Therapeutical Professionals',
                      primary_contact: 'Mary Turner',
                      phone: '281-702-1243',
                      email: 'mary.turner@therapeuticprofessionals.com')



# Faculties
#1-2
FacultyType.create(job_title: 'TCF Admin')
FacultyType.create(job_title: 'Registered Nurse')
FacultyType.create(job_title: 'Doctor')

#1-2
f1 = Faculty.create(first_name: 'Ashley' , last_name: 'Micheal', faculty_type_id: 1, email: 'ashmchl@hotmail.com', phone: '713-455-2309' ,  office_address: '3354 Stafford Rd.' , state_id: 45, zip_code: '77006'  )
f2 = Faculty.create(first_name: 'Jessica' , last_name: 'Sheng', faculty_type_id: 2, email: 'jesssheng@hotmail.com', phone: '713-333-4309' ,  office_address: '3355 Chimary Rock Rd.' , state_id: 45, zip_code: '76005'  )
f3 = Faculty.create(first_name: 'Cheri', last_name: 'Berry', faculty_type_id: 3, email: 'tin@sdc.com', phone: 'num-num-yumm', office_address: 'Dark Side', state_id: 45, zip_code: '99999')


# Application Form




afc2 = ApplicationForm.create(candidate: c2,training_center_id: t1, aha_instructor_motivation: 'Because  my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '2 weeks', owned_equipment: 'No' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/28/2017', "%m/%d/%Y") , aha_form_agreement: 'No', course_type_id: 1, cpr_instructor_check: 'Yes', aha_check: 'No',  merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-2', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c2,training_center_id: t1, aha_instructor_motivation: 'Because  my passion is to teach BLS' , experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '2 weeks', owned_equipment: 'No' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/28/2017', "%m/%d/%Y") , aha_form_agreement: 'No', course_type_id: 1, cpr_instructor_check: 'Yes', aha_check: 'No',  merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-2', course_address: '4312 Dancers Image', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c2,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach ACLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '2 weeks', owned_equipment: 'No' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/28/2017', "%m/%d/%Y") , aha_form_agreement: 'No', course_type_id: 1, cpr_instructor_check: 'Yes', aha_check: 'No',  merica_cross_check:  'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-2', course_address: '1515 Big Street', state_id: 45, course_city: 'Houston', course_zipcode:'77099')

afc3 = ApplicationForm.create(candidate: c3,training_center_id: t1, aha_instructor_motivation: 'Because  my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Family',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('05/1/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 1, cpr_instructor_check: 'Yes', aha_check: 'Yes' , aha_training_canter:' ' , merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-2', course_address: '42 Happy Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c3,training_center_id: t1, aha_instructor_motivation: 'Because  my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Family',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('05/1/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 1, cpr_instructor_check: 'Yes', aha_check: 'Yes', aha_training_canter:' ' , merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-2', course_address: '6050 Strauss', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c3,training_center_id: t1, aha_instructor_motivation: 'Because  my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Family',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('05/1/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 1, cpr_instructor_check: 'Yes', aha_check: 'Yes', aha_training_canter:' ' , merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-9', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77099')

afc5 = ApplicationForm.create(candidate: c5,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach BLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('05/2/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 2, cpr_instructor_check: 'No', aha_check: 'Yes', aha_training_canter:' ' , merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-9', course_address: '4244 Lasting Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c5,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('05/2/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 2, cpr_instructor_check: 'No', aha_check: 'Yes', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-9', course_address: '888 Lucky Road', state_id: 45, course_city: 'Houston', course_zipcode:'77099')

afc1 = ApplicationForm.create(candidate: c1,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach BLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 2, cpr_instructor_check: 'No', aha_check: 'Yes', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-12', course_address: '4111 Sumpton', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c1,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach ACLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 2, cpr_instructor_check: 'No', aha_check: 'Yes', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-12', course_address: '302 Drive Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77294')
ApplicationForm.create(candidate: c1,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 2, cpr_instructor_check: 'No', aha_check: 'Yes', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-15', course_address: '688 Truth Road', state_id: 45, course_city: 'Houston', course_zipcode:'77199')

afc4 = ApplicationForm.create(candidate: c4,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach BLS ', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '3 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/29/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 3, cpr_instructor_check: 'No', aha_check: 'Yes', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-15', course_address: '99 Zepeda Road', state_id: 45, course_city: 'Houston', course_zipcode:'77039')
ApplicationForm.create(candidate: c4,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach HS ', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '3 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/29/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 3, cpr_instructor_check: 'No', aha_check: 'No', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-16', course_address: '555 Queensland', state_id: 45, course_city: 'Houston', course_zipcode:'77096')
ApplicationForm.create(candidate: c4,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach ACLS ', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '3 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/29/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 3, cpr_instructor_check: 'No', aha_check: 'No', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-13', course_address: '3333 Road Drive', state_id: 45, course_city: 'Houston', course_zipcode:'77097')

afc10 = ApplicationForm.create(candidate: c10,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach BLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'Yes' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 3, cpr_instructor_check: 'Yes', aha_check: 'No', aha_training_canter:' ' , merica_cross_check: 'Yes', ns_council_other: ' ',
                                course_start_date: '2017-3-28', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77093')
ApplicationForm.create(candidate: c10,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'Yes' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes' , course_type_id: 3, cpr_instructor_check: 'Yes', aha_check: 'No', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other:' ',
                                course_start_date: '2017-3-29', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c10,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach ACLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Friend',teaching_frequency: '1 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'Yes' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 4, cpr_instructor_check: 'Yes', aha_check: 'No', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                                course_start_date: '2017-3-21', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77094')

afc9 = ApplicationForm.create(candidate: c9,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach BLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '2 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 4, cpr_instructor_check: 'Yes', aha_check: 'No', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-4', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c9,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach HS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '2 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 4, cpr_instructor_check: 'Yes', aha_check: 'No', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-3', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77099')
ApplicationForm.create(candidate: c9,training_center_id: t1, aha_instructor_motivation: 'Because my passion is to teach ACLS', experience_check: 'Yes', experience_description: 'Experience include.....', marketing_origin: 'Online',teaching_frequency: '2 weeks', owned_equipment: 'Yes' ,
                       public_class_availability: 'No', teaching_location: 'Yes', screening_form_agreement: 'No' , date_agreed: DateTime.strptime('04/26/2017', "%m/%d/%Y") , aha_form_agreement: 'Yes', course_type_id: 4, cpr_instructor_check: 'Yes', aha_check: 'No', aha_training_canter: ' ', merica_cross_check: 'Yes', ns_council_other: ' ',
                              course_start_date: '2017-4-2', course_address: '1234 Building Lane', state_id: 45, course_city: 'Houston', course_zipcode:'77095')

# Timeslot seed data to use for testing

# f3
Timeslot.create(start: '2017-4-12 10:00:00', title: 'Timeslot Available for Cheri Berry',    end: '2017-4-12 11:00:00', faculty_id: f3.id)
Timeslot.create(start: '2017-4-14 12:00:00', title: 'Timeslot Available for Cheri Berry',    end: '2017-4-14 13:00:00', faculty_id: f3.id)
Timeslot.create(start: '2017-4-15 13:00:00', title: 'Timeslot Available for Cheri Berry',    end: '2017-4-15 14:00:00', faculty_id: f3.id)
Timeslot.create(start: '2017-4-16 10:00:00', title: 'Timeslot Available for Cheri Berry',    end: '2017-4-16 11:00:00', faculty_id: f3.id)
Timeslot.create(start: '2017-4-16 15:00:00', title: 'Timeslot Available for Cheri Berry',    end: '2017-4-16 16:00:00', faculty_id: f3.id)

# f2
Timeslot.create(start: '2017-4-13 11:00:00', title: 'Timeslot Available for Jessica Sheng',  end: '2017-4-13 12:00:00', faculty_id: f2.id)
Timeslot.create(start: '2017-4-13 14:00:00', title: 'Timeslot Available for Jessica Sheng',  end: '2017-4-13 15:00:00', faculty_id: f2.id)
Timeslot.create(start: '2017-4-15 9:00:00',  title: 'Timeslot Available for Jessica Sheng',  end: '2017-4-15 10:00:00', faculty_id: f2.id)
Timeslot.create(start: '2017-4-16 11:00:00', title: 'Timeslot Available for Jessica Sheng',  end: '2017-4-16 12:00:00', faculty_id: f2.id)
Timeslot.create(start: '2017-4-16 15:00:00', title: 'Timeslot Available for Jessica Sheng',  end: '2017-4-16 16:00:00', faculty_id: f2.id)

# f1
Timeslot.create(start: '2017-4-14 11:00:00', title: 'Timeslot Available for Ashley Michael', end: '2017-4-14 12:00:00', faculty_id: f1.id)
Timeslot.create(start: '2017-4-13 14:00:00', title: 'Timeslot Available for Ashley Michael', end: '2017-4-13 15:00:00', faculty_id: f1.id)
Timeslot.create(start: '2017-4-15 13:00:00', title: 'Timeslot Available for Ashley Michael', end: '2017-4-15 14:00:00', faculty_id: f1.id)
Timeslot.create(start: '2017-4-18 10:00:00', title: 'Timeslot Available for Ashley Michael', end: '2017-4-18 11:00:00', faculty_id: f1.id)
Timeslot.create(start: '2017-4-17 15:00:00', title: 'Timeslot Available for Ashley Michael', end: '2017-4-17 16:00:00', faculty_id: f1.id)



# Appointment Seed Data for the c# applications

# f3 time slot appointments
Appointment.create(start: '2017-4-12 10:00:00', end:'2017-4-12 11:00:00',  faculty_id:f3.id,  title:'Appointment for Jessie Klein with Cheri Berry', application_form_id:afc1.id)
Appointment.create(start: '2017-4-14 12:00:00', end:'2017-4-14 13:00:00',  faculty_id:f3.id,  title:'Appointment for Sarah Johann with Cheri Berry', application_form_id:afc2.id)
Appointment.create(start: '2017-4-15 13:00:00', end:'2017-4-15 14:00:00',  faculty_id:f3.id,  title:'Appointment for David Jacques with Cheri Berry', application_form_id:afc3.id)
Appointment.create(start: '2017-4-16 10:00:00', end:'2017-4-16 11:00:00',  faculty_id:f3.id,  title:'Appointment for Michelle Sasser with Cheri Berry', application_form_id:afc4.id)
Appointment.create(start: '2017-4-16 15:00:00', end:'2017-4-16 16:00:00',  faculty_id:f3.id,  title:'Appointment for Allison Castilliano with Cheri Berry', application_form_id:afc5.id)

# f2 time slot appointments
Appointment.create(start: '2017-4-13 11:00:00', end:'2017-4-13 12:00:00',  faculty_id:f2.id,  title:'Appointment for Alex Capont with Jessica Sheng', application_form_id:afc9.id)
Appointment.create(start: '2017-4-13 14:00:00', end:'2017-4-13 15:00:00',  faculty_id:f2.id,  title:'Appointment for Alex Capont with Jessica Sheng', application_form_id:afc9.id)
Appointment.create(start: '2017-4-15 9:00:00',  end:'2017-4-15 10:00:00',  faculty_id:f2.id,  title:'Appointment for Alex Capont with Jessica Sheng', application_form_id:afc9.id)
Appointment.create(start: '2017-4-16 11:00:00', end:'2017-4-16 12:00:00',  faculty_id:f2.id,  title:'Appointment for Alex Capont with Jessica Sheng', application_form_id:afc9.id)
Appointment.create(start: '2017-4-16 15:00:00', end:'2017-4-16 16:00:00',  faculty_id:f2.id,  title:'Appointment for Joseph Mandell with Jessica Sheng', application_form_id:afc10.id)

# f1 time slot appointments
Appointment.create(start: '2017-4-14 11:00:00', end:'2017-4-14 12:00:00',  faculty_id:f1.id,  title:'Appointment for Jessie Klein with Ashley Michael', application_form_id:afc1.id)
Appointment.create(start: '2017-4-13 14:00:00', end:'2017-4-13 15:00:00',  faculty_id:f1.id,  title:'Appointment for Sarah Johann with Ashley Michael', application_form_id:afc2.id)
Appointment.create(start: '2017-4-15 13:00:00', end:'2017-4-15 14:00:00',  faculty_id:f1.id,  title:'Appointment for David Jacques with Ashley Michael', application_form_id:afc3.id)
Appointment.create(start: '2017-4-18 10:00:00', end:'2017-4-18 11:00:00',  faculty_id:f1.id,  title:'Appointment for Michelle Sasser with Ashley Michael', application_form_id:afc4.id)
Appointment.create(start: '2017-4-17 15:00:00', end:'2017-4-17 16:00:00',  faculty_id:f1.id,  title:'Appointment for Allison Castilliano with Ashley Michael', application_form_id:afc5.id)

user = User.new
user.email = 'ghreek@gmail.com'
user.password = 'slammer3'
user.password_confirmation = 'slammer3'
user.role = 'candidate'
user.skip_confirmation!
user.save!

