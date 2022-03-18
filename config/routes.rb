Rails.application.routes.draw do
  
  devise_for :users
  root to:"homes#top"
  resources :users,only:[:show,:edit,:index,:update]
  resources :books,only:[:show,:edit,:index,:update,:destroy,:create]
  get 'home/about' => 'homes#about', as:'about'
end
