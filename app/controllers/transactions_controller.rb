class TransactionsController < ApplicationController
  def shopping_list
    @compras = Transaction.where(user: current_user)
  end

  def selling_list
    @ventas = []
    Transaction.all.each do |transaction|
    @ventas << transaction if transaction.product.user == current_user
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def create
    @product = Product.find(params[:product_id])
    Transaction.create(user: current_user, product: @product, price: @product.price)
    @product.stock -= 1
    @product.save
    redirect_to shopping_list_path
  end
end
