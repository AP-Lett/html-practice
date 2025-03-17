Rails.application.routes.draw do
  resources :locations, only: [:index, :show]
  resources :posts, only: [:index, :show]

end
