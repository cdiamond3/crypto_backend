Rails.application.routes.draw do
  resources :create_inputs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "coins", to: "coins#index"
end
