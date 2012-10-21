NewApi::Application.routes.draw do
  get "get_map/:id" => "maps#index", as: "get", format: false
  get "show_map" => "maps#show", as: "show", format: false
  post "create" => "maps#create", as: "create", format: false
  put "update/:id" => "maps#update", as: "update", format: false
  delete "delete/:id" => "maps#delete", as: "delete", format: false

end
