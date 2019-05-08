Rails.application.routes.draw do

  namespace :api do
    get "/dvd_player" => "products#dvd_player"
    get "/record_player" => "products#dvd_player"
    get "/boombox" => "products#boombox"
    get "/computer" => "products#computer"
    get "/iphone" => "products#iphone"
    get "/all_products" => "products#all_products"
  end
end
