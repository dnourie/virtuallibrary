VirtualLibrary::Application.routes.draw do

  resources :books do
    resources :reviews
    post 'borrow', on: :member
  end

  resources :book_histories

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get "sesssions/create"
  get "sessions/destroy"
  resources :users
  resources :sessions

 
  root to:  'books#index'
  resources :pages
  resources "contacts", only: [:new, :create]

end
