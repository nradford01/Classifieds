class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
  end
  
  def new
    @products = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    end
  end

  def edit
    @products =Product.find(params[:id])
  end
  
  def update
     @products = Product.find(params[:id])
    if @products.update(product_params)
       redirect_to products_path
    else
      render edit 
  end
  
  def destroy
    @products =Product.find(params[:id])
    @product.destroy
    redirect_to post_path
     
  end
  def Purchase
    @product = Product.find(params[id])
    
end

private
def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
