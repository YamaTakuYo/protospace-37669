Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes do 
    resources :comments do
    end
  end
  resources :users, only: :show 

end
## resources :users, only: [:new, :edit, :update, :destroy, :cancel]