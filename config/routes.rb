Rails.application.routes.draw do
  root to: 'home#index'

  resources :categories, :products
  devise_for :users

  resources :users , only: [:index, :show, :edit, :update] do
    resource :address, path_names: { edit: "" }
  end
  # , except: :show,
  # authenticated :user do
  #   root to: 'home#index', as: :root_app
  # end

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

  # devise_scope :user do
  #   root to: 'devise/sessions#new'
  # end
end
