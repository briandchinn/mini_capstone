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


end
