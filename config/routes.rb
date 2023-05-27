Rails.application.routes.draw do
  resources :accounts
  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end

  get "up" => "rails/health#show", :as => :rails_health_check

  get "about" => "static_page#about", :as => :about

  root "static_page#home"
end
