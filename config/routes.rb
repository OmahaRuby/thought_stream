Rails.application.routes.draw do
  mount ActionCable.server, at: '/action_cable'

  resources :thoughts, only: [:index, :create], path: '/'
  root to: 'thoughts#index' # just for good measure
end
