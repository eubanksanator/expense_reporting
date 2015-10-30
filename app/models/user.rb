class User < ActiveRecord::Base
  has_many :cab_fares
  has_many :car_rentals
  has_many :travel_costs
end
