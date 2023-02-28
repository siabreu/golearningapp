Rails.application.routes.draw do
  devise_for :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :courses
  resources :students
  get "/enrollments", to: "enrollments#create"

  # Defines the root path route ("/")
  root to: "home#index"
end
