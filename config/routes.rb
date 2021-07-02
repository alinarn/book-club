Rails.application.routes.draw do
  root 'home#index'
  get 'home/statistics'
  get 'home/about'
  get 'books_read', to: "books#read"
  get 'future_read', to: "books#future_read"
  resources :books
end
