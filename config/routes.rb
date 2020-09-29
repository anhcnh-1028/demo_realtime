Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resources :reports, only: %i(new create)
  resources :notifications, only: :index
end
