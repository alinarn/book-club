Rails.application.routes.draw do
  resources :books
  root 'home#index'
  get 'home/statistics'
  get 'home/about'
end
