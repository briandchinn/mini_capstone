Rails.application.routes.draw do

  namespace :api do
    get "/dvd_player" => "products#dvd_player"
    get "/record_player" => "products#record_player"
    get "/boombox" => "products#boombox"
    get "/computer" => "products#computer"
    get "/iphone" => "products#iphone"
    get "/all_products" => "products#all_products"
    get "/single_product_query" => "products#single_product_query"
    get "/single_product_segment/:name" => "products#single_product_query"

    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
  end
end

