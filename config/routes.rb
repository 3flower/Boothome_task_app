Rails.application.routes.draw do

  resources :tasks, only: [:create, :update, :destroy, :edit]
  root 'tasks#top'

  devise_for :users, skip: [:password, :registration]

  # エラー処理　404
  get '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
end
