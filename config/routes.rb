Rails.application.routes.draw do
  get 'welcome/index'
  get 'courses/index'
  get 'courses/new'

  get '/courses/:id', to: 'courses#show'
  # get 'search', to: "welcome#search"   # get 'url' to "controller_name#name_of_action"

  resources :welcome
  resources :courses
  resources :course_infos
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
  resources :searches

  # resources :search, only: [:index]
  root 'welcome#index'
end