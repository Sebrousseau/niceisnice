Rails.application.routes.draw do
  resources :shops , only: %i[index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'dashboards#home'
  resources :cashbacks, only: %i[new create index]
  resource :dashboard, only: %i[show home]
  devise_for :users
end
