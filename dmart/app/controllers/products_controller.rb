class ProductsController < ApplicationController
    
    def create 
        
        @product =  Product.create(post_params)
        if @product.save
          render "show"
        else
          render "new"
        end
    end

    def new 
       @product = Product.new
    end
    
    def edit
        @product = Product.find(params[:id])
    end 
    
    def update
        @product = Product.find(params[:id])
        
        if @product.update(post_params)
            render 'show'
        else
            render 'edit'
        end
    end 

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
        
        #  format.html {redirect_to products_path, notice: 'Product was successfully destroyed.' }
        
    end
   

    def index
        @products = Product.all
        puts "..........././././././';';;'';'[][][].....#{@products.inspect}"
    end
    
    def show 
        @product = Product.find(params[:id])
    end

    private
    
    def post_params
      params.require(:product).permit(:product_name, :quanitity, :price)
    end 

    # def product_params
    #     params.fetch(:product, {})
    # end


end
