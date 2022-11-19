Rails.application.routes.draw do
  get "pages/home"
  get "pages/owed"
  get "pages/summary"
  get "pages/payments"
  get "pages/categories"
  get "pages/people"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
