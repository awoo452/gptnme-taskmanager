Rails.application.routes.draw do
  # calendar app routes (standalone)
  get "calendar", to: "calendar#index", as: :calendar
  get "calendar/day", to: "calendar#day", as: :calendar_day

  # your existing task routes
  get "tasks", to: "tasks#index", as: :tasks
  get "tasks/new", to: "tasks#new", as: :new_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  get "tasks/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  patch "tasks/:id", to: "tasks#update"
  patch "tasks/:id/complete", to: "tasks#complete", as: "complete_task"
  delete "tasks/:id", to: "tasks#destroy", as: "delete_task"

  root "tasks#index"
end