class AddSuggestedPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :regular_price, :integer
  end
end
