Rails.application.routes.draw do
  get 'pages/todo'
  root 'pages#todo'

  match 'complete/:task_id', to: 'pages#update_task', via: [:patch]

  resources :tasks
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
