class Customer::CartsController < ApplicationController
  before_action :logged_in_user

  def show
    @cart = current_user.cart
  end

  def add
    product = Product.find_by_id(params[:product_id])
    if product
      @cart_product = current_user.cart.cart_products.find_or_initialize_by(product_id: product.id)
      @cart_product.number += 1
      if !cart_product.save
        @errors = cart_product.errors.full_messages.join(", ")
      end
    end
  end

  def delete
    product = Product.find_by_id(params[:product_id])
    if product
      @cart_product = current_user.cart.cart_products.find_or_initialize_by(product_id: product.id)
      return if @cart_product.number <= 0
      @cart_product.number -= 1
      if !cart_product.save
        @errors = cart_product.errors.full_messages.join(", ")
      end
    end
  end

end