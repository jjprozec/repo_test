Rails.application.routes.draw do

  get 'penes/new'
  get 'home/index'
get "/bienvenido", to: "home#index"

root to: "home#index"

get "articles/new", to: "articles#new"
get "articles/:id", to: "articles#show"
get "articles/:id/edit", to: "articles#edit"

patch "articles/:id", to: "articles#update", as: :article
post "articles", to: "articles#create"
delete "articles/:id", to: "articles#destroy"

end
