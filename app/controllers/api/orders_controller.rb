class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def create

    product = Product.find(params[:product_id])

    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
      user_id: current_user.id,
      product_id: params[:product_id]
      )

    @order.save

    if @order.save
      render 'show.json.jbuilder'
    else
      render json: {error: @order.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end

end
