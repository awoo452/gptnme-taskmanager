Rails.application.routes.draw do
  get "tasks", to: "tasks#index", as: :tasks
  get "tasks/new", to: "tasks#new", as: :new_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  get "tasks/:id", to: "tasks#show", as: :task

  post "tasks", to: "tasks#create"
  patch "tasks/:id", to: "tasks#update"
  patch "tasks/:id/complete", to: "tasks#complete", as: "complete_task"

  delete "tasks/:id", to: "tasks#destroy", as: "delete_task"

  get "up" => "rails/health#show", as: :rails_health_check
  root "tasks#index"
end