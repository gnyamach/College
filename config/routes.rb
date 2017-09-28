Rails.application.routes.draw do
  devise_for :users
  resources :sections
  resources :courses
  resources :professors
  # Redirect to the sections page when accessing the main page
  root to:"sections#index"
  #handle users who have been redirected to login first
  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
