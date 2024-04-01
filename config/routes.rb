Rails.application.routes.draw do
  resources :books
  resources :groups do
    post 'members', to: 'members#create'
  end
end
