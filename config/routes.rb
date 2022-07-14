Rails.application.routes.draw do
  resources :talks
  resources :speakers
  resources :attendees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
