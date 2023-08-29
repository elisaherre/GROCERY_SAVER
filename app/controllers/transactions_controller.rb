class TransactionsController < ApplicationController
  def shopping_list
    @transactions = Transaction.where(mode: "buy")
  end

  def selling_list
    @transactions = Transaction.where(mode: "sell")
  end
end
