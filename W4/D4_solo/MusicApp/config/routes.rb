Rails.application.routes.draw do
  resources :users, only: [:show, :new, :create]
  resource :session, only: [:new, :create, :destroy]

  resources :bands do
    resources :albums, only: [:new]
  end

  resources :albums, only: [:create, :edit, :show, :update, :destroy] do
    resources :tracks, only: [:new]
  end

  resources :tracks, only: [:create, :edit, :show, :update, :destroy]
end
