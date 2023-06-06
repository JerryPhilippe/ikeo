Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  if Rails.env.development?
    get '/components', to: "pages#components"
  end

  resources :items
end
