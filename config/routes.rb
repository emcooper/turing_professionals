Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  resources :companies, only: [:index]
end
