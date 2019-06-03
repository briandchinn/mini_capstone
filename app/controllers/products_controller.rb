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
      regular_price: params[:regular_price],
      price: params[:price],
      description: params[:description],
      in_stock: params[:in_stock],
      supplier_id: params[:supplier_id]
      )
    if @product.save
      Image.create(
        url: params[:image_url],
        product_id: @product.id 
        )
    end

    redirect_to "/products/#{@product.id}"

  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] 
    @product.price = params[:price]
    @product.regular_price = params[:regular_price] 
    @product.description = params[:description] 
    @product.in_stock = params[:in_stock]
    @product.supplier = params[:supplier] || @product.supplier
      
    @product.save

    redirect_to "/products/#{@product.id}"
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit.html.erb'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to "/products"
  end

end
