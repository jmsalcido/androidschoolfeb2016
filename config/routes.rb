Rails.application.routes.draw do
  resources :todos
  root 'welcome#index'
  get "api/todos", controller: 'todos_api', action: :index
  post "api/todos/create", controller: 'todos_api', action: :create
end
