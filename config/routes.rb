Rails.application.routes.draw do

  resources :tasks, only: [:create, :update, :destroy, :edit] do
    member do
      delete :delete_file_attachment
    end
  end
  root 'tasks#top'

  devise_for :users, skip: [:password, :registration]

  # エラー処理　404
  # get '*not_found' => 'application#routing_error'
  # post '*not_found' => 'application#routing_error'
end
