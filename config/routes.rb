Rails.application.routes.draw do

  resources :orders, only: [:update] do
    member do
      put :mark_as_done
    end
  end

  namespace :admin do
    get "/"      => "dashboard#index"
    get "/login" => "dashboard#login",          as: :login

    scope :reports do
      get "/"             => "reports#index",   as: :reports
      get "/orders_graph" => "reports#orders_graph"
    end

    scope :payments do
      get "/total"        => "payments#total"
      get "/total_day"    => "payments#total_day"
      get "/average"      => "payments#average"
    end

    scope :inventory do
      get "/"             => "inventory#index", as: :inventory
    end

    scope :upsell do
      get "/"             => "upsell#index",    as: :upsell
    end
  end

  root "home#index"
end
