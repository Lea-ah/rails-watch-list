Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :create, :new]
  resources :Bookmarks, only: [:index, :show, :create]
end
