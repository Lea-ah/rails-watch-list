Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:show, :create, :new] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end

# resources :posts do
#   resources :comments, only: [:create, :destroy]
# end
# resources :comments, only: :index

# A user can see all the lists INDEX
# GET "lists"
# A user can see the details of a given list and its name SHOW
# GET "lists/42"
# A user can create a new list CREATE NEW
# GET "lists/new"
# POST "lists"
# A user can add a new bookmark (movie/list pair) to an existing list
# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
# A user can delete a bookmark from a list DELETE
# DELETE "bookmarks/25"
