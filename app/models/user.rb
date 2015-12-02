class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :business_clients
  has_many :cab_fares
  has_many :car_rentals
  has_many :cell_phones
  has_many :employee_meals
  has_many :other_expenses
  has_many :travel_costs

end
