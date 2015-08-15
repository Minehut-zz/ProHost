Rails.application.routes.draw do
  resources :servers
  root 'servers#index'
end
