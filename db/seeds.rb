# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ city_name: 'Star Wars' }, { city_name: 'Lord of the Rings' }])
#   Character.create(city_name: 'Luke', movie: movies.first)
User.create(email: 'abc123@gmail.com', password: 'abc123', role: 'admin')
State.create!([
  { state_name: 'Maharashtra', state_code: 'MH' },
  { state_name: 'Madhya pradesh', state_code: 'MP' },
  { state_name: 'Uttar pradesh', state_code: 'UP' },
  { state_name: 'Gujrat', state_code: 'GJ' }
])
City.create!([
  { :city_name => Mumbai, :state_id => 1 },
  { :city_name => Pune, :state_id => 1 },
  { :city_name => Nagpur, :state_id => 1 },
  { :city_name => Amravati, :state_id => 1 },

  { :city_name => Bhopal, :state_id => 2 },
  { :city_name => Indore, :state_id => 2 },
  { :city_name => Ujjain, :state_id => 2 },
  { :city_name => Dewas, :state_id => 2  },

  { :city_name => Lucknow, :state_id => 3},
  { :city_name => Kanpur, :state_id => 3},
  { :city_name => Agra, :state_id => 3},
  { :city_name => Mathura, :state_id => 3},

  { :city_name => Ahmedabad, :state_id => 4},
  { :city_name => Surat, :state_id => 4},
  { :city_name => Rajkot, :state_id => 4},
  { :city_name => Vadodara, :state_id => 4}
])