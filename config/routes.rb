Rails.application.routes.draw do
  root 'home#index'
  #root to: 'comments#index'

  devise_for :users

  resources :annual_state_crime_rates

  get '/annual_state_crime_rates/rate_range/:id', to: 'annual_state_crime_rates#rate_range'
  post 'range_year_crime', to: 'annual_state_crime_rates#range_year_crime'
  # post '/annual_state_crime_rates', to: 'annual_state_crime_rates#individual_crime'

  resources :years

  resources :crimes

  resources :states

  resources :comments, only: [:new, :create]

end
