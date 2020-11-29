Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  config = Rails.application.config.baukis2

  constraints host: config[:staff][:host] do
    namespace :staff, path: "" do
      root "top#index"
      get "login" => "sessions#new", as: :login
      resource :session, only: [:create, :destroy]
      resource :account, except: [:new, :create, :destroy]
      resource :password, only: [:show, :edit, :update]
    end
  end

  constraints host: config[:admin][:host] do
    namespace :admin do
      root "top#index"
      get "login" => "sessions#new", as: :login
      resource :session, only: [:create, :destroy]
      resources :staff_members do
        resources :staff_events, only: [ :index ]
      end
      resources :staff_events, only: [ :index ]
    end
  end

  constraints host: config[:customer][:host] do
    namespace :customer, path: config[:customer][:path] do
      root "top#index"
    end
  end
end
