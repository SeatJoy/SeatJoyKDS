Rails.application.routes.draw do

  resources :orders, only: [:update] do
    member do
      put :mark_as_done
    end
  end

  get "/admin" => "admin/dashboard#index"

  root "home#index"
end
