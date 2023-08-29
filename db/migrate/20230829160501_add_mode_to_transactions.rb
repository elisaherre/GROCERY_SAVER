class AddModeToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :mode, :string
  end
end
