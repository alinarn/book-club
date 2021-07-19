Rails.application.routes.draw do
  get 'users/new'
  root 'home#index'
  get 'about-club', to: "home#about"
  get 'club-stats', to: "books#statistics"
  
  resources :books, :except => :index do
    collection do
      get 'read'
      get 'future_read'
    end
  end
end
