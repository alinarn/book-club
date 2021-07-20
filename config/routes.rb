Rails.application.routes.draw do
  root 'home#index'
  get 'about-club', to: "home#about"
  get 'club-stats', to: "books#statistics"
  get    '/login',  to: "sessions#new"
  post   '/login',  to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  
  resources :books, except: :index do
    collection do
      get 'read'
      get 'future_read'
    end
  end

  resources :users, except: :index
end
