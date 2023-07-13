Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_scope :user do
  get '/settings' => 'registrations#edit'
  end
  # Defines the root path route ("/")
  # root "articles#index"
 

end
