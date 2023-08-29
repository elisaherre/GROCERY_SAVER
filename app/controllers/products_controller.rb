class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_products
    @products = Product.where(user: current_user)
  end

  # def category
  #   @category = [params[products][category]]
  #   @products = Product.where(category: )
  # end

  def edit
  end

  def update
    @product.update(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to my_products_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :stock, :price, :expiration_date, :photo, :category)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
