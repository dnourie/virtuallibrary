VirtualLibrary::Application.routes.draw do

  

  resources :book_histories

  #root 'welcome#index'
  

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get "sesssions/create"
  get "sessions/destroy"
  resources :users
  resources :sessions
  resources :books do
    resources :reviews
    post 'borrow', on: :member
  end
  root to:  'books#index'
  resources :pages
end
