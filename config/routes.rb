Rails.application.routes.draw do
root 'tasks#index'

resources :boards 
resources :tasks do
    resources :lists, only: [:index, :new, :create, :detroy]
    end
end

