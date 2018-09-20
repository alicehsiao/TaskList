Rails.application.routes.draw do
  # routing to homepage (root_path will take you to homepage)
  root 'tasks#index'

  get '/tasks', to: 'tasks#index', as: 'tasks'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  post '/tasks', to: 'tasks#create'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'

  patch '/tasks/:id/complete', to: 'tasks#complete', as: 'complete_task'
end
