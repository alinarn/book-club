Rails.application.routes.draw do
  root 'home#index'
  get 'home/about'
  get 'club-stats', to: "books#statistics"
  
  resources :books, :except => :index do
    collection do
      get 'read'
      get 'future_read'
    end
  end
end
