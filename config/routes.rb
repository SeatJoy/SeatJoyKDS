Rails.application.routes.draw do

  resources :orders, only: [:update] do
    member do
      put :mark_as_done
    end
  end

  get "/admin"         => "admin/dashboard#index"
  get "/admin/reports" => "admin/reports#index"

  namespace :admin, path: "admin/payments" do
    get "/total"   => "payments#total"
    get "/average" => "payments#average"
  end

  root "home#index"
end
