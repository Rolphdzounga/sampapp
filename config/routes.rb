Rails.application.routes.draw do
  get 'sessions/new'
  get 'login'=> 'sessions#new'
  post 'login'=> 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'users/new'

  resources :users
  get 'users/new'
  get 'signup' =>  'users#new', as: 'signup'

  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'home' => 'pages#home' , to: 'home'
  get 'contact' => 'pages#contact' , to: 'contact'
  get 'about' => 'pages#about' , to: 'about'
  get 'help' => 'pages#help' , to: 'help'

  root 'pages#home'
end
