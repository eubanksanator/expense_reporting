Rails.application.routes.draw do
  resources :other_expenses
  resources :business_clients
  resources :cell_phones
  resources :employee_meals
  get 'static_pages/home'

  scope '/travel_expenses' do
    resources :cab_fares, :car_rentals, :travel_costs
  end

  resources :users
  root 'static_pages#home'


end
