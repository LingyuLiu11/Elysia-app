class Customer::StoresController < ApplicationController
  def index
    @stores = Store.order(:id).page(params[:page]).per(10)
  end

  def new
    @store = Store.new
  end

  def create
  end
end
