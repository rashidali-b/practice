Rails.application.routes.draw do
  root "user#index"
  resources :user do
    member do
      get :delete
    end
  end
  get 'demo/index'
  get "demo/hello"
  get "demo/hello1"
  get "demo/youtube"
  # root "demo#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
