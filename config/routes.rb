FriendExpertSearch::Application.routes.draw do
  root to: 'experts#index'

  resources :experts
end
