Rails.application.routes.draw do
  resources :books
  resources :groups do
    post "members", to: "members#create"
  end

  post "users", to: "users#create"
  get "users", to: "users#index"
  post "users/:user_id/cards", to: "cards#create"
end
