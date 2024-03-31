Rails.application.routes.draw do
  resources :groups do
    post 'members', to: 'members#create'
  end
end
