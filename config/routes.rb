Rails.application.routes.draw do
  get "/facts" => "facts#index"

  post "/facts" => "facts#create"

  get "/facts/:id" => "facts#show"

  patch "/facts/:id" => "facts#update"

  delete "/facts/:id" => "facts#destroy"
end
