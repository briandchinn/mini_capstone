class ProductsController < ApplicationController

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

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end    

    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
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

    redirect_to "/products/#{@product.id}"

  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

end
