Rails.application.routes.draw do
  resources :checkins do
    collection do
      get :history
      get :customers
    end
  end

  resources :stores
  devise_for :users, controllers: { registrations: 'users/registrations'}

  root to: 'stores#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
