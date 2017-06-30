Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :topics, only: [:index, :show]

>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
<<<<<<< HEAD

  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'
=======
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d

  resources :blogs do
    member do
      get :toggle_status
    end
  end
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

=======

  mount ActionCable.server => '/cable'
  
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  root to: 'pages#home'
end
