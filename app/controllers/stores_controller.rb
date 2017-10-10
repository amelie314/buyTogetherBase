class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
  end

  def create
    store = Store.new store_params
    #params是hash被指定的變數，後面用[]把key包進去，就能找到對應的value
    # store = Store.new params[:store]
    # store.name = params[:name]
    # store.description = params[:description]
    # store.phone = params[:phone]
    # store.address = params[:address]

    store.save

    redirect_to stores_path
  end

  def show
    @store = Store.find params[:id]
  end
 #防止付費欄位被黑，只允許某些欄位可以修改
  private
  def store_params
    params.require(:store).permit(:name, :description, :address, :phone)
  end
end