Rails.application.routes.draw do

  resources :tasks, only: [:create, :update, :destroy, :edit]
  root 'tasks#top'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    invitations: 'users/invitations'
  }
  # devise_scope :users do
  #   get 'login', to: 'devise/sessions#new'
  #   post 'login', to: 'devise/sessions#create'
  #   delete 'signout', to: 'devise/sessions#destroy'
  # end
end
