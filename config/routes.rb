Rails.application.routes.draw do
  resources :tournament_logs
  resources :players
  devise_for :users
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
