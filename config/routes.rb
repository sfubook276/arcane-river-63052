Rails.application.routes.draw do
  get 'welcome/index'
  # get 'courses/index'
  # get 'courses/new'
  # get 'search', to: "welcome#search"   # get 'url' to "controller_name#name_of_action"

  resources :welcome
  resources :courses
  resources :campuses
  resources :corequisites
  resources :course_outlines
  resources :departments
  resources :grades
  resources :instructors
  resources :prerequisites
  resources :schedules
  resources :terms
  resources :years

  # resources :search, only: [:index]
  root 'welcome#index'
end