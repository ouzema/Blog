Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :articles do
    resources :comments
  end
  get 'contact', to: 'contact#index'
  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
end
