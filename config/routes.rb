Rails.application.routes.draw do
  resources :editions, only: [:index, :show] do
    resources :authors, only: [:index]
  end

  resources :authors, only: [:index, :show] do
    resources :editions, only: [:index]
  end
end
