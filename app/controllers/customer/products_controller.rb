class Customer::ProductsController < ApplicationController
  before_action :set_store
  def index
    if params[:product_name]
      @products = Product.where('lower(name) LIKE ?', "%#{params[:product_name].downcase}%")
    else
      @products = @store.products.order(:id).paginate(page: params[:page], per_page: 10)
    end
  end

  def show
    @product = @store.products.find_by_id(params[:id])
  end

  private
  def set_store
    @store = Store.find_by_id(params[:store_id])
  end
end
