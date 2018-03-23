class AddPriceToStores < ActiveRecord::Migration
  def change
    add_column :stores, :price, :integer
  end
end
