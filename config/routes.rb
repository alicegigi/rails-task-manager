Rails.application.routes.draw do
  root 'tasks#index'
  get 'tasks'          => 'tasks#index'
  get 'tasks/:id'      => 'tasks#show', as: 'task'
  get 'tasks/new'      => 'tasks#new', as: 'new_task'
  post 'tasks'         => 'tasks#create'
  get 'tasks/:id/edit' => 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id'    => 'tasks#update'
  delete 'tasks/:id'   => 'tasks#destroy', as: 'destroy_task'
end

