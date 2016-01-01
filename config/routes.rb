Rails.application.routes.draw do
  resources :users
  get 'users/new'
  get 'signup' =>  'users#new', as: 'signup'

  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'home' => 'pages#home' , to: 'home'
  get 'contact' => 'pages#contact' , to: 'contact'
  get 'about' => 'pages#about' , to: 'about'

  root 'pages#home'
end
