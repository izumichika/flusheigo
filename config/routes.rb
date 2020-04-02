Rails.application.routes.draw do
  root "tangos#index"
  resources :tangos, only: [:index, :new, :create, :destroy] do
    resources :tests, only: [:index] do
      collection do
        get 'test', to: "tests#test"
        post 'mark', to: "tests#mark"
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
