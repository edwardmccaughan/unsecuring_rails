Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  get "stolen_passwords/create"
  resources :stolen_passwords

  resources :posts do
    collection do
      get :delete_my_posts
    end
  end

  devise_for :users
  resources :users

  resources :recipes

  root "pages#home"
  
end
