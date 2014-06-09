P::Application.routes.draw do

  scope :api do
    get "/messages(.:format)" => "messages#index"
  end

  root "home#index"

  resources :messages, only: [:index, :show, :create, :destroy]

  devise_for :users

end
