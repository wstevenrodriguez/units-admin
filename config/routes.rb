Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  #get '/data', to: 'data#get_all_data'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  resources :units, only: [:update]
  #resources :users, only: [:index]
  post "/auth/login", to: "authentication#login"
end
