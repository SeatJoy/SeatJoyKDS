Rails.application.routes.draw do

  resources :orders, only: [:update] do
    member do
      put :mark_as_done
    end
  end

  namespace :admin do
    get "/"      => "dashboard#index"
    get "/login" => "dashboard#login"
  end

  namespace :admin, path: "admin/reports" do
    get "/"             => "reports#index"
    get "/orders_graph" => "reports#orders_graph"
  end

  namespace :admin, path: "admin/payments" do
    get "/total"     => "payments#total"
    get "/total_day" => "payments#total_day"
    get "/average"   => "payments#average"
  end

  namespace :admin, path: "admin/inventory" do
    get "/"          => "inventory#index"
  end

  root "home#index"
end
