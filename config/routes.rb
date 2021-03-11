Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/employees" => "employees#index"
    get "/employees/:id" => "employees#show"
    post "/employees" => "employees#create"
    patch "/employees/:id" => "employees#update"
    delete "/employees/:id" => "employees#destroy"

    get "/departments" => "departments#index"
    get "/departments/:id" => "departments#show"
    post "/departments" => "departments#create"
    patch "/departments/:id" => "departments#update"
    delete "/departments/:id" => "departments#destroy"
  end
end
