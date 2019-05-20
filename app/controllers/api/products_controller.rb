class Api::ProductsController < ApplicationController

  # before_action :authenticate_user

  def index
    
    
    @products = Product.all

    if params[:search]
      @products = Product.where("name iLIKE ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = Product.where("price < ?", 1000)
    end

    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        @products = @products.order(price: :desc)
      else
        @products = @products.order(:price)
      end


    end    

    render 'index.json.jbuilder'
  end

  def show
    if current_user
      @product = Product.find(params[:id])
      render 'show.json.jbuilder'
    else
      render json: []
    end

  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      in_stock: params[:in_stock],
      supplier_id: params[:supplier_id]
      )
    @product.save

    # Messing around with 
    # @image = Image.new(url: params[:url])

    # @image.product = @image
    # @image.save

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
      
    @product.save

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "You destroyed product #{params[:id]}!"}
  end

end
