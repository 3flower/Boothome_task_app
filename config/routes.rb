Rails.application.routes.draw do

  resources :tasks, only: [:create, :update, :destroy, :edit]
  root 'tasks#top'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    invitations: 'users/invitations'
  }
end
