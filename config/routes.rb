Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :portofolios, except: [:show]


  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
