Rails.application.routes.draw do
root 'tasks#index'

resources :boards
resources :tasks
end
