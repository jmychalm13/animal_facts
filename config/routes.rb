Rails.application.routes.draw do
  get "/facts" => "facts#index"
end
