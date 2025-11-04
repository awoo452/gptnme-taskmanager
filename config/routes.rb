Rails.application.routes.draw do
  get "tasks", to: "tasks#index", as: :tasks
  get "tasks/new", to: "tasks#new", as: :new_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  get "tasks/:id", to: "tasks#show", as: :task

  # 🔥 Add these two lines:
  post "tasks", to: "tasks#create"
  patch "tasks/:id", to: "tasks#update"

  get "up" => "rails/health#show", as: :rails_health_check
  root "tasks#index"
end