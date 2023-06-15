Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  if Rails.env.development?
    get '/components', to: "pages#components"
  end


  get '/cave', to: "pages#cave"
  get '/secretroom', to: "pages#secretroom"
  get '/start', to: "pages#start"
  get '/finish', to: "pages#finish"


  resources :items
  get "/cart", to: "cart_items#index"
  get "/item/:id/create", to: "cart_items#create", as: :create_cart_item

  patch 'games/update'
  # resources :user, only: [] do
  #   resources :games, only: [:update]
  # end
end
