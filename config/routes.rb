Rails.application.routes.draw do
  root to: 'lives#index'
  resources :lives, only:[:index]
end
