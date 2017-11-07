Rails.application.routes.draw do

  resources :customers, only: [:index]  do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
