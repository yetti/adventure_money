# frozen_string_literal: true

Rails.application.routes.draw do
  get "pages/home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/404", to: "errors#not_found"
  get "/422", to: "errors#unprocessable"
  get "/500", to: "errors#internal_server"

  # Defines the root path route ("/")
  root "pages#home"
end
