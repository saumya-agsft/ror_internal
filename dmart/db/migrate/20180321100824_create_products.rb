class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :quanitity
      t.string :price
      
      t.timestamps null: false
    end
  end
end
