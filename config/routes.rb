Rails.application.routes.draw do
  resources :coin_inputs
  get "coins", to: "coins#index"
end
