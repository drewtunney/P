P::Application.routes.draw do

root "welcome#index"

resources :messages, only: [:index, :show, :create, :destroy]

devise_for :users


end
