
User.destroy_all
CabFareAndToll.destroy_all
LocalCarRental.destroy_all
TravelCost.destroy_all

@users = User.all
@day_num = 1

10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

@users.each do |user|
  CabFareAndToll.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
  @day_num += 2
  LocalCarRental.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
  TravelCost.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
end
# 10.times do
#   CabFareAndToll.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
#   @day_num += 2
# end

puts "Created #{User.count} users"
puts "Created #{CabFareAndToll.count} cab fare and tolls"
puts "Created #{TravelCost.count} travel costs"
