Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: {format: :json} do
      resources :users do
        post 'login' => 'auth#login', on: :collection
      end
      post '/register', to: 'users#create', as: :register_user
      post '/auth/login', to: 'auth#login'

      get '/addresses' => 'addresses#my_addresses'
      resources :products do
        get '/by_id/:id' => :show, on: :collection

        resources :comments
      end
      resources :categories
      resources :tags
      resources :roles

      resources :order_items
      resources :orders
    end
  end
end
