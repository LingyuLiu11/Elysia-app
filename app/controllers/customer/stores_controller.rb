class Customer::StoresController < ApplicationController
  def index
    @stores = Store.order(:id).paginate(page: params[:page], per_page: 10)
  end

  def show
    @store = Store.find_by_id(params[:id])
  end
end
