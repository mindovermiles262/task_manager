Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects
  resources :tasks
  resources :steps
end
