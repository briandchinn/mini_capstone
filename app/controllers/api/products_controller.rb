class Api::ProductsController < ApplicationController

  def dvd_player
    render "dvd_player.json.jbuilder"
  end

  def record_player
    render "record_player.json.jbuilder"
  end

  def boombox
    render "boombox.json.jbuilder"
  end

  def computer
    render "computer.json.jbuilder"
  end

  def iphone
    render "iphone.json.jbuilder"
  end

  def all_products
    render "all_products.json.jbuilder"
  end


end
