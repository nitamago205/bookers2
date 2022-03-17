Rails.application.routes.draw do
  
  devise_for :users
  root to:"homes#top"
  resources :users,only:[:show,:edit,:index,:update]
  resources :books
  get 'homes/about' => 'homes#about', as:'about'
end
