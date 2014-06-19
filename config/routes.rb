P::Application.routes.draw do

  scope :api do
    get "/messages(.:format)" => "messages#index"
  end

  root "home#index"

  # resources :messages, only: [:index, :new, :show, :create, :destroy]

  devise_for :users, :path => 'accounts'

  resources :users do
    resources :messages
  end

# TODO: nest into users and then update path on the link
  resources :friendships

end
