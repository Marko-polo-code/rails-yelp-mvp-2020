Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/show'
  get 'reviews/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get   'restaurants',      to: 'restaurants#index'

  get   'restaurants/new',  to: 'restaurants#new', as: :new_restaurant
  post  'restaurants',      to: 'restaurants#create', as: :create_restaurant
  get   'restaurants/:id',  to: 'restaurants#show', as: :restaurant

  get   'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  post  'restaurants/:restaurant_id/reviews',     to: 'reviews#create'
end
