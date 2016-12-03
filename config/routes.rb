Rails.application.routes.draw do
  root                         to: 'sessions#show'
  get  '/auth/slack/callback', to: 'sessions#create'
  post '/logout',              to: 'sessions#destroy'
  get  '/sign_in_with_slack',  to: 'sessions#new'

  resources :companies,         only: [:index, :show, :new, :create] do
    resources :notes,           only: [:new, :create]
  end

  resources :cities,            only: [:index, :show]
  resources :starred_companies, only: [:index, :create, :destroy]

  namespace :moderator do
    resources :companies,       only: [:edit, :update]
    get 'companies/approval',   to: 'companies#index'
  end

  namespace :admin do
    resources :companies,       only: [:edit, :update] do
      resources :notes,       only: [:edit, :update, :destroy]
    end
  end
end
