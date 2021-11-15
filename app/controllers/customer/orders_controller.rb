class Customer::OrdersController < ApplicationController

  def show
    @order = Order.find_by_id(params[:id])
  end

  def create
  end

end