Rails.application.routes.draw do

  root 'index#index'
  resources :docs, only: [:index]

end
