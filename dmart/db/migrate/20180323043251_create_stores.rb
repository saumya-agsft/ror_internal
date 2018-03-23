class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :product_name
      t.integer :quantity
    
      t.timestamps null: false
    end
  end
end
