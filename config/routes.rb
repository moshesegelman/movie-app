Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor" => "actors#single_actor"
    get "/all_movies" => "movies#all_movies"
    get "/movie" => "movies#movie"
    get "/query_param" => "actors#params"
    get "/segmant_param/:id" => "actors#params"
    post "/body_param" => "actors#params"

  end
end
