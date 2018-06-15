Rails.application.routes.draw do
  resources :categories
  resources :portofolios, except: [:show]


  get 'portofolio/:id', to: 'portofolios#show', as: 'portofolio_show'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
