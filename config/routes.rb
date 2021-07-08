Rails.application.routes.draw do
  root to: 'users#index'
  resources :users do
    get :receiver, on: :collection
  end
  resources :couriers do
    get :search_courier, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
