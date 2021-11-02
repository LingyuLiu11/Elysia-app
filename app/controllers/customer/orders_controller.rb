class Customer::OrdersController < ApplicationController
  before_action :logged_in_user

  def show
    @order = Order.find_by_id(params[:id])
  end

  def create
  end

end