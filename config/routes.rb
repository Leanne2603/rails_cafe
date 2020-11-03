Rails.application.routes.draw do
  devise_for :users
  resources :menu_items
  # get 'menu_items', to: 'menu_items#index'
  # get 'menu_items/new', to: 'menu_items#new'
  # get 'menu_items/:id', to: 'menu_items#show'
  # post 'menu_items', to: 'menu_items#create'
  # put 'menu_items/:id', to: 'menu_items#update'
  # get 'menu_items/edit/:id', to: 'menu_items#edit'
  # delete 'menu_items/:id', to: 'menu_items#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'orders', to: 'orders#show'
  get 'admin/menu', to: 'admin#menu'

  get '/order/:id', to: 'cafe#order', as: 'order' # as: creates a helper path which can be found in localhost:3000/rails/info

  post "/menu_items/:id/buy", to: "menu_items#buy", as: "buy"
  get  "/menu_items/:id/success", to: "menu_items#success", as: "success"
  get "/menu_items/:id/cancel", to: "menu_items#cancel", as: "cancel"

  root to: 'cafe#index'
end
