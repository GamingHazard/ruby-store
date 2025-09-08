Rails.application.routes.draw do
  # Devise routes for admin authentication, scoped under /admin
  devise_for :admins, path: 'admin'

  # Public-facing routes
  root "products#index"
  # Note: Public can only view products. Management is in the admin namespace.
  resources :products, only: [:index, :show] 
  get "about" => "pages#about", as: :about

  # Admin dashboard and resources
  namespace :admin do
    root to: "products#index"
    get "/sales", to: "dashboard#sales"
    get "/settings", to: "dashboard#settings"
    get "/users", to: "dashboard#users"
    get "/messages", to: "dashboard#messages"
    get "/notifications", to: "dashboard#notifications"
    resources :products
    resource :profile, only: [:show, :edit, :update]
  end

   
end
