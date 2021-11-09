class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all
  end

  def show
    @category = Category.find(params[:id])
    @associated_products = @category.products
    @products = Product.all
  end
end
