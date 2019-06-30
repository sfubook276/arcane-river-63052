Rails.application.routes.draw do
  get 'welcome/index'
  # get 'search', to: "welcome#search"   # get 'url' to "controller_name#name_of_action"

  resources :welcome
  resources :courses
  root 'welcome#index'
end