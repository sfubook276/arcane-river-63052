Rails.application.routes.draw do
  get 'welcome/index'
  get 'search', to: "articles#search"   # get 'url' to "controlller_name#name_of_action"
  
  resources :welcome
  root 'welcome#index'
end