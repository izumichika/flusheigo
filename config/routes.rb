Rails.application.routes.draw do
  devise_for :users
  # root "tangos#index"
  root to: "toppage#index"
  resources :toppage, only: :index
  resources :tangos, only: [:index, :create, :destroy, :show] do
    collection do
      get 'drilltest', to: "tangos#drilltest"
      post 'drillmark', to: "tangos#drillmark"
    end
  end
  resources :tests, only: [:index] do
    collection do
      get 'test', to: "tests#test"
      post 'mark', to: "tests#mark"
    end
  end
end