Rails.application.routes.draw do
  devise_for :students
  get "enrollments/create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :courses
  resources :students
  resources :enrollments, only: [:new, :create]

  # Defines the root path route ("/")
  root to: "home#index"
end
