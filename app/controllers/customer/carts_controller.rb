class Customer::CartsController < ApplicationController

  before_action :authenticated!

  def index
    @cart_products = current_user.cart.cart_products.includes(:product)
    @cart = @cart_products.group_by(&:product)
    # byebug
  end

  def add
    product = Product.find_by_id(params[:product_id])
    if product
      @cart_product = current_user.cart.cart_products.find_or_initialize_by(product_id: product.id)
      @cart_product.number ||= 0
      @cart_product.number += 1
      if !@cart_product.save
        @errors = @cart_product.errors.full_messages.join(", ")
      end
    end
  end

  def update
    @cart_product = CartProduct.find_by_id(params[:cart_product_id])
    number = params[:cart_product][:number].to_i
    number = [0, number].max
    number = [99, number].min
    if number.zero?
      @cart_product.destroy
    else
      @cart_product.update(number: params[:cart_product][:number])
    end
    redirect_to customer_carts_path
  end

  def destroy
    product = Product.find_by_id(params[:product_id])
    if product
      @cart_product = current_user.cart.cart_products.find_by(product_id: product.id)
      @cart_product.destroy if @cart_product
      # return if @cart_product.number <=@cart_product 0
      # @cart_product.number -= 1
      # if !cart_product.save
      #   @errors = cart_product.errors.full_messages.join(", ")
      # end
    end
    redirect_to customer_carts_path

  end
end