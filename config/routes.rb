Rails.application.routes.draw do
  devise_for :users, controllers: { 
    registrations: "registrations"
  }
  
  resources :users
  resources :places
  resources :categories
  resources :cities do
    member do
      get :place
    end
  end
  resources :houses do
    member do
      get :image
    end
    resources :photos
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
  get 'myregistration_choose' => 'myregistration#choose'
  get 'myregistration_own' => 'myregistration#own'
  get 'myregistration_visitor' => 'myregistration#visitor'
  get 'city_place' => 'places#city'
end
