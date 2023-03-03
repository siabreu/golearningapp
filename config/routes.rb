Rails.application.routes.draw do
  devise_for :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :courses
  resources :students
  resources :enrollments, only: :create

  # Defines the root path route ("/")
  root to: "home#index"
end
