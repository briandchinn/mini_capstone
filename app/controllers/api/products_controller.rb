class Api::ProductsController < ApplicationController

  def dvd_player
    @dvd_player = Product.find_by(name:"DVD Player")
    render "dvd_player.json.jbuilder"
  end

  def record_player
    @record_player = Product.find_by(name:"Record Player")
    render "record_player.json.jbuilder"
  end

  def boombox
    @boombox = Product.find_by(name:"Boombox")
    render "boombox.json.jbuilder"
  end

  def computer
    @computer = Product.find_by(name:"Computer")    
    render "computer.json.jbuilder"
  end

  def iphone
    @iphone = Product.find_by(name:"iPhone")
    render "iphone.json.jbuilder"
  end

  def all_products
    @products = Product.all
    render "all_products.json.jbuilder"
  end

  def single_product_query
    product = params[:name]

    @select_product = Product.find_by(name:"#{product}")
    render 'single_product_query.json.jbuilder'
  end

  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    @product.save
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
      
    @product.save
    render 'show.json.jbuilder'
  end

end
