Rails.application.routes.draw do
  resources :magazines, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :authors, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
