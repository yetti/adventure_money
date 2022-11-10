Rails.application.routes.draw do
  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end

  get "owed", controller: "page", action: "owed"
  get "summary", controller: "page", action: "summary"
  get "payments", controller: "page", action: "payments"
  get "categories", controller: "page", action: "categories"
  get "people", controller: "page", action: "people"

  root "page#home"
end
