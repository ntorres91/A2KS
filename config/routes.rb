require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do

  root "dashboards#index"
  resource :dashboard, only: [:show, :index]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :update] do
    resources :videos
  end
  resource :search, only: [:show]
  get 'pages/about' => 'high_voltage/pages#show', id: 'about'
  get 'pages/contact' => 'high_voltage/pages#show', id: 'contact'

end
