class ProductsController < ApplicationController
  def index
    @products = Product.all
    logger.debug(@products.inspect)
    @categories = Category.all
  end

  def show
    logger.debug(params)
    @product = Product.find(params[:id])
  end
end
