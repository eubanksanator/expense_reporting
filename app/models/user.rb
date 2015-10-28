class User < ActiveRecord::Base
  has_many :cab_fare_and_tolls
  has_many :local_car_rentals
  has_many :travel_costs
end
