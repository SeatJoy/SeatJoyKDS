Rails.application.routes.draw do

  get "/admins/sign_up" => redirect("/admin")

  devise_for :admins, controllers: {
                      passwords: "admins/passwords",
                      sessions:  "admins/sessions"
                    }

  namespace :admin do
    get "/"               => "dashboard#index"

    scope :reports do
      get "/"             => "reports#index",   as: :reports
      get "/pdf"          => "reports#pdf",     as: :reports_in_pdf
      get "/pdf2"         => "reports#pdf2"     # for testing purposes
      get "/orders_graph" => "reports#orders_graph"
    end

    scope :payments do
      get "/total"        => "payments#total"
      get "/total_day"    => "payments#total_day"
      get "/average"      => "payments#average"
    end

    scope :inventory do
      get  "/"            => "inventory#index",      as: :inventory
      post "/upload_csv"  => "inventory#upload_csv", as: :inventory_upload_csv
    end

    scope :upsell do
      get "/"             => "upsell#index",    as: :upsell
    end

    scope :runners do
      get "/"             => "runners#index",   as: :runners
    end

    resources :inventory_order_items, only: [:create, :update]
  end

  resources :orders, only: [:update] do
    member do
      put :mark_as_done
    end
  end

  root "home#index"
end
