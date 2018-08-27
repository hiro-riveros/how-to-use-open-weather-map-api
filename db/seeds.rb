# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.create!([
  { name: 'Antofagasta' },
  { name: 'Calama' },
  { name: 'Santiago' },
  { name: 'Valdivia' },
  { name: 'Puerto Montt'}
])

city = City.find_by(name: 'Santiago')
date = Date.current - 1.month
(1..31).each do |day|
  if date.change(day: day)
    city.weathers.create(
      current: [1,2,3,4,5,6,7,8,9,10,11].sample,
      pressure: 1018.0,
      humidity: 81.0,
      min: [1,2,3,4,5,6,7,8,9,10,11].sample,
      max: [11,12,13,14,15,16,17,18,19,20,21,22,23,24,25].sample,
      description: 'nublado')
  end
end
