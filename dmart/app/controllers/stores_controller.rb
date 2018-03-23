class StoresController < ApplicationController
  def index

  end

  def create 
     
    @store =  Store.create(post_params)
    if @store.save
      render "new"
    else
      render "show "
    end

  end

  def delete
  end

  def new 
    @store = Store.new
  end 

  def update
  end

  def add 
    
   
  end

  def read
  end

  def show
    # @parameter =Stores.all
  end 

private
  def post_params
    params.require(:product).permit(:product_name, :quanitity, :price)
  end 
end
