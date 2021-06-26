Rails.application.routes.draw do
  root 'home#index'
  get 'home/statistics'
  get 'home/about'
end
