Rails.application.routes.draw do

  # front end (?)
  # get "/codechops" => "codechops#index"
  # get "/codechops/:id" => "codechops#show"

  # categories
  get "/categories" => "categories#index"
  get "/skills" => "skills#index"
  get "/categories/:id" => "categories#show"
  get "/skills/:id" => "skills#show"
  get "/skills/:id" => "skills#show"
  post "/categories/" => "categories#create"
  post "/skills/" => "skills#create"
  patch "/categories/:id" => "categories#update"
  patch "/skills/:id" => "skills#update"
  delete "/categories/:id" => "categories#destroy"
  delete "/skills/:id" => "skills#destroy"

end

