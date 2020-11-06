Rails.application.routes.draw do
  root 'tasklists#top'
  devise_for :users
end
