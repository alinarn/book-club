Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_up: 'join', sign_in: 'login', sign_out: 'logout' }
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
