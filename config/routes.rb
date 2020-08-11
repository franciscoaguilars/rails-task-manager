Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # List all tasks
  get 'tasks', to: 'task#index'

  # Routes to create a task
  get '/task/new', to: "task#new"

  post '/tasks', to: "task#create"

  #Routs to update an instance
  get '/task/:id/edit', to: "task#edit"

  patch '/task/:id', to: "task#update"

  #Delete
  delete '/task/:id', to: "task#destroy"

  # Route for one task
  get '/task/:id', to: 'task#show', as: :task
end
