Rails.application.routes.draw do
  resources :photos
  resources :memories
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
