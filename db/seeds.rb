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
  { city_name: 'Mumbai', state_id: (State.find_by_state_code("MH").id) },
  { city_name: 'Pune', state_id: (State.find_by_state_code("MH").id) },
  { city_name: 'Nagpur', state_id: (State.find_by_state_code("MH").id) },
  { city_name: 'Amravati', state_id: (State.find_by_state_code("MH").id) },

  { city_name: 'Bhopal', state_id: (State.find_by_state_code("MP").id) },
  { city_name: 'Indore', state_id: (State.find_by_state_code("MP").id) },
  { city_name: 'Ujjain', state_id: (State.find_by_state_code("MP").id) },
  { city_name: 'Dewas', state_id: (State.find_by_state_code("MP").id)  },

  { city_name: 'Lucknow', state_id: (State.find_by_state_code("UP").id) },
  { city_name: 'Kanpur', state_id: (State.find_by_state_code("UP").id) },
  { city_name: 'Agra', state_id: (State.find_by_state_code("UP").id) },
  { city_name: 'Mathura', state_id: (State.find_by_state_code("UP").id) },

  { city_name: 'Ahmedabad', state_id: (State.find_by_state_code("GJ").id) },
  { city_name: 'Surat', state_id: (State.find_by_state_code("GJ").id) },
  { city_name: 'Rajkot', state_id: (State.find_by_state_code("GJ").id) },
  { city_name: 'Vadodara', state_id: (State.find_by_state_code("GJ").id) }
])