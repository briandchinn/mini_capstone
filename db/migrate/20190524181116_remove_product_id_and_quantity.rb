class RemoveProductIdAndQuantity < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :quantity, :string
    remove_column :orders, :product_id, :integer
  end
end
