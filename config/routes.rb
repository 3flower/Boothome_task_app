Rails.application.routes.draw do

  resources :tasks, only: [:create, :update, :destroy, :edit]
  root 'tasks#top'

  devise_for :users
end
