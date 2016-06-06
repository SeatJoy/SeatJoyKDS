Rails.application.routes.draw do

  resources :orders, only: [:update] do
    member do
      put :mark_as_done
    end
  end

  get "/admin" => "admin/dashboard#index"

  namespace :admin, path: "admin/reports" do
    get "/"             => "reports#index"
    get "/orders_graph" => "reports#orders_graph"
  end

  namespace :admin, path: "admin/payments" do
    get "/total"     => "payments#total"
    get "/total_day" => "payments#total_day"
    get "/average"   => "payments#average"
  end

  root "home#index"
end
