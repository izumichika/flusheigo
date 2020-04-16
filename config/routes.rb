Rails.application.routes.draw do
  devise_for :users
  unauthenticated do
    as :user do
      root :to => 'devise/registrations#new'
    end
  end
  root "users#show"
  resources :users, only: [:show] 
  controller :tangos do
    resources :tangos, only: [:create, :destroy] do
      collection do
        get 'drilltest', to: "tangos#drilltest"
        post 'drillmark', to: "tangos#drillmark"
      end
    end
    scope path: 'flush' do
      get 'flush_tangos', action: :show
    end
  end
  resources :tests, only: [:index] do
    collection do
      get 'test', to: "tests#test"
      post 'mark', to: "tests#mark"
    end
  end
end