Rails.application.routes.draw do
  resources :appointments
  resources :doctors do 
    resources :appointments, only: [:index, :new]
  end
  resources :patients do 
    resources :doctors, only: [:index]
    resources :appointments, only: [:index, :new]
  end
  devise_for :receptionists
  root 'patients#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
