Rails.application.routes.draw do
  root 'home#index'
  get 'home/statistics'
  get 'home/about'
  
  resources :books, :except => :index do
    collection do
      get 'read'
      get 'future_read'
    end
  end
end
