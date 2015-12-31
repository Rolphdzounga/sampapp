Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/contact'

  get 'pages/about'

  get 'home' => 'pages#home' , to: 'home'
  get 'contact' => 'pages#contact' , to: 'contact'
  get 'about' => 'pages#about' , to: 'about'
end
