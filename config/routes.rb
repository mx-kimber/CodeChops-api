Rails.application.routes.draw do

  # front end (?)
  get "/codechops" => "codechops#index"
  get "/codechops/:id" => "codechops#show"

  # categories
  get "/categories" => "categories#index"
  get "/categories/:id" => "categories#show"
  post "categories/" => "categories#create"
  patch "/categories/:id" => "categories#update"
  delete "/categories/:id" => "categories#destroy"

  # skills
  get "/skills" => "skills#index"
  get "skills/:id" => "skills#show"
  post "skills/" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"


end

