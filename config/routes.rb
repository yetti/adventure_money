Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "owed", controller: "pages", action: "owed"
  get "summary", controller: "pages", action: "summary"
  get "payments", controller: "pages", action: "payments"
  get "categories", controller: "pages", action: "categories"
  get "people", controller: "pages", action: "people"

  # Defines the root path route ("/")
  root "pages#home"
end
