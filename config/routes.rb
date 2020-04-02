Rails.application.routes.draw do
  root "tangos#index"
  resources :tangos, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
