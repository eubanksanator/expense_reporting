User.destroy_all
CabFare.destroy_all
CarRental.destroy_all
TravelCost.destroy_all

@users = User.all
@day_num = 1

10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

5.times do
  @users.each do |user|
    CabFare.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
    @day_num += 2
    CarRental.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
    TravelCost.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
  end
end
# 10.times do
#   CabFareAndToll.create!(occurence: Faker::Date.forward(@day_num), cost: Faker::Commerce.price, user_id: user.id)
#   @day_num += 2
# end

puts "Created #{User.count} users"
puts "Created #{CabFare.count} cab fare and tolls"
puts "Created #{CarRental.count} car rentals"
puts "Created #{TravelCost.count} travel costs"
